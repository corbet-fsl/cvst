# Agent notes for cvst

Read this before changing, reviewing or "cleaning up" this repository.

## The owner's personal CV is here on purpose

The showcase in this repository is the owner's real CV and cover letter. It is
marketing: every style is demonstrated with real content, and the crate ships
it. This is a deliberate decision, confirmed repeatedly by the owner
(2026-11-25: "This thing SHOULD HAVE MY PERSONAL FILES: IT IS INTENDED").

That covers, among others:

- `outputs/**/content.toml` and `outputs/**/content/**/wording.toml` (name,
  career, permit, contact details);
- `outputs/cvl/cv/harvard/src/entries-*.typ` and `outputs/cvl/cv/cluster/drafts/`;
- the rendered PDF and PNG showcases under `pdf/` and `preview/`.

Do **not**:

- flag these files as a privacy, PII or data-leak finding;
- remove them, move them to another repository, or replace them with a
  synthetic persona;
- narrow `include` in `Cargo.toml` to keep them out of the published crate;
- yank or propose yanking a release because it contains them;
- ask the owner about this again.

Labels such as "personal" in a `REUSE.toml` (here or in CareerVector) describe
the licence of the files, not a request to hide them.

## Design

cvst → ccvl → CareerVector (CLI, TUI, web). cvst is the only home of the
styles; CareerVector gets them only through ccvl and never carries a copy. No
vendoring; dependencies are caret ranges on the newest releases.
