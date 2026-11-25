# cvst

<!-- ccid:security:begin (rendered by ccid render; do not edit by hand) -->
**Security and dependencies:** watched by Renovate (with OSV vulnerability alerts); an update is merged only when its tests pass. See the [security policy](SECURITY.md).
<!-- ccid:security:end -->

The CareerVector style library: style catalogue, contracts, Typst templates and
style assets, split out of `ccvl` with their git history. It is published on
crates.io as [`cvst`](https://crates.io/crates/cvst).

## Layout

- `outputs/<document>/<style>/` — style trees with `contract.toml`, `scaffold.toml`,
  `style.toml`, substyles, Typst sources, content records and the checked-in showcase.
  Twelve styles carry a contract: `cvl/cv/{cluster,harvard,modern,onepager}`,
  `cvl/cl/harvard`, and a header-only `scaffold` for audio, chatbot, flyers,
  portfolios, presentations, videos and web.
- `.agent/typst/` — shared Typst templates and fonts.
- `src/` — the Rust crate: `catalogue()`, `Style::contract()`, `load_contract()`,
  `validate_contract()`, `normalize_locale()`, plus `file()`/`files()` for the embedded
  text files.

Packaging: the crate embeds the text files (TOML, Typst, Markdown, JSON, TXT), about
100 KB. Binary assets (showcase PDF and PNG renders, fonts) stay in the repository
and are not published; fonts come from ctypst's `document-fonts`. `STYLES_ROOT` is
the crate's source directory, so the binary files are only there in a repository
checkout. The directory layout is also what an npm or JSR package would ship; that
package is not published.

## Showcase

The styles are shown with the owner's real CV and cover letter. That content
(the `content.toml` and `wording.toml` records, the Harvard entries, the cluster
drafts and the rendered previews) is part of the library on purpose and ships
in the crate. It is not test data to be replaced. See `AGENTS.md`.

## Users

`ccvl` depends on cvst (feature `core`, also pulled in by `render` and `doc`) and hands the
styles to every product through its `styles` module. CareerVector (CLI, TUI, web) depends only on
ccvl and carries no copy: `cv init` and `cv update` write these trees, the owner's showcase CV
included, into the user's workspace.

## Canonical home

cvst is the canonical home of style contract validation (`validate_contract`) and of
the styles. Dependencies use caret ranges; nothing is vendored or pinned.

## Tests

`cargo test` loads and validates every style contract in the catalogue and checks that the
engine package files are embedded.

## Licence

FSL-1.1-ALv2, see `LICENSE.md`.
