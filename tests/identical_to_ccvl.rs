//! Every style file must be byte-identical to the one in the ccvl checkout named by
//! `CVST_CCVL_DIR` (skipped when unset, so CI without a ccvl clone still passes).
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
fn bytes_match_ccvl() {
    let Ok(ccvl) = std::env::var("CVST_CCVL_DIR") else {
        eprintln!("CVST_CCVL_DIR unset; skipping");
        return;
    };
    let (ccvl, root) = (Path::new(&ccvl), Path::new(cvst::STYLES_ROOT));
    let mut files = Vec::new();
    for top in ["outputs", ".agent/typst"] {
        walk(&root.join(top), &mut files);
    }
    assert!(files.len() > 500);
    for f in files {
        let rel = f.strip_prefix(root).unwrap();
        let theirs =
            fs::read(ccvl.join(rel)).unwrap_or_else(|_| panic!("missing in ccvl: {rel:?}"));
        assert!(fs::read(&f).unwrap() == theirs, "differs: {rel:?}");
    }
}
