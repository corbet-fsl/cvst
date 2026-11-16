# cvst

The CareerVector style library: style catalogue, contracts, Typst templates and
style assets, split out of `ccvl` with their git history.

## Layout

- `outputs/<document>/<style>/` — style trees with `contract.toml`, `scaffold.toml`,
  `style.toml`, substyles, Typst sources, content records and the checked-in showcase.
- `.agent/typst/` — shared Typst templates and fonts.
- `src/` — the Rust crate: `catalogue()`, `Style::contract()`, `load_contract()`,
  `validate_contract()`, plus `file()`/`files()` for the embedded text files.

Packaging: a Rust crate that embeds the text files (TOML, Typst, Markdown) and
exposes the whole tree as plain files under `STYLES_ROOT`. Binary assets (PDF, PNG,
fonts) are not embedded. The directory layout is also what an npm or JSR package
would ship; that package is prepared by layout only and not published. The crate is
not published either (the data is about 50 MB, above the crates.io limit; trimming
the showcase renders is a later decision).

## Canonical home

cvst is the canonical home of style contract validation (`validate_contract`) and of the styles. The copy in ccvl-core is removed in phase 2, when ccvl depends on cvst. Dependencies use caret ranges; nothing is vendored or pinned.

## Tests

`cargo test` validates every style contract. With `CVST_CCVL_DIR` set to a `ccvl`
checkout, it also proves every file is byte-identical to the one in `ccvl`.

## Licence

FSL-1.1-ALv2, see `LICENSE.md`.
