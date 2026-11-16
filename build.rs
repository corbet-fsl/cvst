//! Generates the table of embedded text style files (`.toml`, `.typ`, `.md`).
//! Binary assets (PDF, PNG, fonts) stay on disk next to the crate; see `STYLES_ROOT`.
use std::fmt::Write as _;
use std::path::Path;
use std::{env, fs};

fn walk(root: &Path, dir: &Path, out: &mut Vec<String>) {
    let mut entries: Vec<_> = fs::read_dir(dir)
        .unwrap()
        .map(|e| e.unwrap().path())
        .collect();
    entries.sort();
    for path in entries {
        if path.is_dir() {
            walk(root, &path, out);
        } else if matches!(
            path.extension().and_then(|e| e.to_str()),
            Some("toml" | "typ" | "md")
        ) {
            out.push(
                path.strip_prefix(root)
                    .unwrap()
                    .to_str()
                    .unwrap()
                    .replace('\\', "/"),
            );
        }
    }
}

fn main() {
    let root = env::var("CARGO_MANIFEST_DIR").unwrap();
    let root = Path::new(&root);
    let mut files = Vec::new();
    for top in ["outputs", ".agent/typst"] {
        println!("cargo:rerun-if-changed={top}");
        walk(root, &root.join(top), &mut files);
    }
    let mut code = String::from("pub const EMBEDDED: &[(&str, &str)] = &[\n");
    for f in &files {
        let abs = root.join(f).to_str().unwrap().replace('\\', "/");
        writeln!(code, "    ({f:?}, include_str!({abs:?})),").unwrap();
    }
    code.push_str("];\n");
    fs::write(
        Path::new(&env::var("OUT_DIR").unwrap()).join("embedded.rs"),
        code,
    )
    .unwrap();
}
