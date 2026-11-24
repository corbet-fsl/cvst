//! Every style file must be byte-identical to the one in the copy named by `CVST_COPY_DIR`:
//! a directory holding `outputs/` and `.agent/typst/`, today `careervector-cli/` in a CareerVector
//! checkout. Skipped when unset, because cvst's CI has no access to that private repository.
use std::fs;
use std::path::{Path, PathBuf};

fn walk(dir: &Path, out: &mut Vec<PathBuf>) {
    for e in fs::read_dir(dir).unwrap() {
        let p = e.unwrap().path();
        if p.is_dir() {
            walk(&p, out);
        } else {
            out.push(p);
        }
    }
}

#[test]
fn bytes_match_copy() {
    let Ok(copy) = std::env::var("CVST_COPY_DIR") else {
        eprintln!("CVST_COPY_DIR unset; skipping");
        return;
    };
    let (copy, root) = (Path::new(&copy), Path::new(cvst::STYLES_ROOT));
    let mut files = Vec::new();
    for top in ["outputs", ".agent/typst"] {
        walk(&root.join(top), &mut files);
    }
    assert!(files.len() > 500);
    for f in files {
        let rel = f.strip_prefix(root).unwrap();
        let theirs =
            fs::read(copy.join(rel)).unwrap_or_else(|_| panic!("missing in the copy: {rel:?}"));
        assert!(fs::read(&f).unwrap() == theirs, "differs: {rel:?}");
    }
}
