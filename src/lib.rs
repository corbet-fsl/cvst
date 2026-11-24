//! CareerVector style library: the style catalogue, contracts, Typst templates and
//! style assets that used to live in `ccvl`.
//!
//! The data files keep their repository layout (`outputs/<document>/<style>/...` and
//! `.agent/typst/`). Text files are embedded in the crate ([`file`]); binary assets
//! (PDF, PNG, fonts) are not part of the published crate; in a repository checkout they are plain
//! files under [`STYLES_ROOT`].

use std::collections::BTreeSet;

use anyhow::{Context, Result};

mod contract;
pub use contract::validate_contract;

mod embedded {
    include!(concat!(env!("OUT_DIR"), "/embedded.rs"));
}

/// Directory holding the plain data files (valid when built from source).
pub const STYLES_ROOT: &str = env!("CARGO_MANIFEST_DIR");

/// Normalize a locale in `language-country` form.
pub fn normalize_locale(value: &str) -> Result<String> {
    use anyhow::ensure;
    let value = cletter::normalize_locale_id(value);
    let (language, country) = value
        .split_once('-')
        .context("locale must be language-country")?;
    ensure!(
        (2..=3).contains(&language.len())
            && country.len() == 2
            && language.bytes().all(|c| c.is_ascii_lowercase())
            && country.bytes().all(|c| c.is_ascii_lowercase()),
        "unsupported locale: {value}; expected language-country"
    );
    Ok(value)
}

/// Every embedded text file as `(repository-relative path, contents)`.
#[must_use]
pub fn files() -> &'static [(&'static str, &'static str)] {
    embedded::EMBEDDED
}

/// One embedded text file by repository-relative path.
#[must_use]
pub fn file(path: &str) -> Option<&'static str> {
    embedded::EMBEDDED
        .iter()
        .find(|(p, _)| *p == path)
        .map(|(_, c)| *c)
}

/// A style: a directory under `outputs/` that carries a `contract.toml`.
#[derive(Debug, Clone, PartialEq, Eq, PartialOrd, Ord)]
pub struct Style {
    /// Directory relative to the repository root, e.g. `outputs/cvl/cv/harvard`.
    pub dir: String,
    /// Document family, the path below `outputs/`, e.g. `cvl/cv` or `flyers`.
    pub document: String,
    /// Style name (last path component).
    pub name: String,
}

impl Style {
    /// The raw `contract.toml` of this style.
    #[must_use]
    pub fn contract_source(&self) -> Option<&'static str> {
        file(&format!("{}/contract.toml", self.dir))
    }

    /// The parsed and validated contract.
    pub fn contract(&self) -> Result<serde_json::Value> {
        let source = self
            .contract_source()
            .with_context(|| format!("{} has no contract.toml", self.dir))?;
        load_contract(source).with_context(|| format!("contract of {}", self.dir))
    }
}

/// Parse a contract TOML text and validate it.
pub fn load_contract(source: &str) -> Result<serde_json::Value> {
    let value: serde_json::Value = toml::from_str(source).context("contract is not valid TOML")?;
    validate_contract(&value)?;
    Ok(value)
}

/// The catalogue of every style, sorted.
#[must_use]
pub fn catalogue() -> Vec<Style> {
    let mut dirs = BTreeSet::new();
    for (path, _) in embedded::EMBEDDED {
        if let Some(dir) = path.strip_suffix("/contract.toml") {
            dirs.insert(dir);
        }
    }
    dirs.into_iter()
        .filter_map(|dir| {
            let rest = dir.strip_prefix("outputs/")?;
            let (document, name) = rest.rsplit_once('/')?;
            Some(Style {
                dir: dir.to_owned(),
                document: document.to_owned(),
                name: name.to_owned(),
            })
        })
        .collect()
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn catalogue_is_not_empty_and_every_contract_validates() {
        let styles = catalogue();
        assert!(styles.len() >= 8, "found {} styles", styles.len());
        for style in &styles {
            style
                .contract()
                .unwrap_or_else(|e| panic!("{}: {e:#}", style.dir));
        }
    }

    #[test]
    fn catalogue_lists_every_contract_on_disk() {
        fn walk(dir: &std::path::Path, out: &mut BTreeSet<String>) {
            for entry in std::fs::read_dir(dir).unwrap() {
                let path = entry.unwrap().path();
                if path.is_dir() {
                    walk(&path, out);
                } else if path.file_name().is_some_and(|n| n == "contract.toml") {
                    let rel = path.parent().unwrap().strip_prefix(STYLES_ROOT).unwrap();
                    out.insert(rel.to_string_lossy().replace('\\', "/"));
                }
            }
        }
        let mut on_disk = BTreeSet::new();
        walk(
            &std::path::Path::new(STYLES_ROOT).join("outputs"),
            &mut on_disk,
        );
        let embedded: BTreeSet<String> = catalogue().into_iter().map(|s| s.dir).collect();
        assert_eq!(embedded, on_disk);
    }

    #[test]
    fn rejects_bad_contract() {
        assert!(load_contract("shared_pages = [0]").is_err());
    }
}
