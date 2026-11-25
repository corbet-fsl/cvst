# CV project

Locale sources live at `<locale>/main.typ`. Generated PDFs live under
`output/<locale>/{twopager,threepager,fourpager}/cv.pdf`.

- `just build-cv <locale>` renders all three page variants for one locale.
- `just build-cv-variants` renders both locales.
- `just watch-cv <locale> [2|3|4]` watches one page variant; four pages is the default.
