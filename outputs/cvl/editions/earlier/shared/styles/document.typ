// Shared presentation primitives for CVs and cover letters.

#let cv-bullet() = box(width: 10.5pt, height: 7.35pt, align(horizon, align(center, polygon(fill: rgb("#000000"), (0pt, 0pt), (4.41pt, 2.75625pt), (0pt, 5.5125pt)))))

// Entry heading (bold). Override size: #cv-h(size: 14pt)[...]
#let cv-h(size: 11pt, t) = { text(size: size, weight: "bold", t) }
#let cv-hu(size: 11pt, t) = { set strong(delta: -300); text(size: size, weight: "bold", t) }
// Entry subheading. Override size: #cv-s(size: 9pt)[...]
#let cv-s(size: 10pt, t) = text(size: size, t)
// Bullet row. Override indent/gutter: #cv-b(indent: 12pt)[...]
#let cv-b(indent: 10.5pt, gutter: 0pt, t) = grid(columns: (indent, 1fr), gutter: gutter, cv-bullet(), t)
// Sub-bullet row (indented)
#let cv-sb(indent: 10.5pt, gutter: 0pt, t) = pad(left: indent, grid(columns: (indent, 1fr), gutter: gutter, cv-bullet(), t))

#let document-style(locale: "en-ch", doc) = {
    let locale-parts = locale.split("-")
    assert(locale-parts.len() == 2, message: "locale must contain language and region subtags")
    set page(paper: "a4", margin: (top: 12mm, bottom: 12mm, left: 15mm, right: 15mm))
    set text(font: "Archivo", size: 10.5pt, fill: black, lang: locale-parts.first(), region: locale-parts.last(), top-edge: "cap-height", bottom-edge: "baseline")
    set par(leading: 0.7em, justify: false, spacing: 0pt)
    set block(above: 0pt, below: 0pt)
    show link: it => text(fill: rgb("#1e3a5f"), it)
    doc
}
