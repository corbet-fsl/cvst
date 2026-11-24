# Chatbot outputs

**Scaffold only.** The chatbot has not been defined yet. The folders exist so
the engine discovers, builds and checks this document type with the same
4 × 5 style and substyle grid as the CV and the cover letter.

| Path | State |
| --- | --- |
| `scaffold/style.toml` | `de-ch` / `en-ch`, a 16:9 landscape page, one page, substyle `standard` (default); `slot-2` to `slot-5` are empty substyle slots |
| `scaffold/contract.toml`, `scaffold/scaffold.toml` | No content fields yet |
| `scaffold/layout.typ` | Placeholder renderer: profile name and contact line only |
| `scaffold/standard/<language>/ch/` | Leaf record, strings, layout, Typst entry and checked-in [PDF](scaffold/standard/en/ch/pdf/chatbot.pdf) |
| `slot-2` to `slot-4` | Empty style slots |

The intended purpose is a chatbot that answers a recruiter's questions. Its
runtime, content fields and output format are open decisions. Build one leaf
with `bash ./cv build-output chatbot en-ch`.
