# Pandoc Markdown Book

#### Write your book in Markdown and have Pandoc convert it to PDF/EPUB/HTML

To use this template, you need:

- `pandoc` and `pandoc-crossref` (must match in version)
- Full TeX Live distribution

Run the script for the output format you want to build. For example:

```bash
./compile_pdf.sh
```

This will create a PDF file in the `build` directory.

If you want to publish your ebook on Kindle, use [kindlegen](https://www.amazon.com/gp/feature.html?docId=1000765211) to convert `epub` to `mobi`.

```bash
./kindlegen ./build/epub/output.epub
```

## Caveats

- Though `pandoc` obviously supports LaTeX equations, only PDF is able to render them correctly. EPUB will not look good at all. HTML is okay, though not as good as PDF.

## Credits

This template is modified based on original work by [Ryan Frazier](https://gitlab.com/pianomanfrazier/).

Many thanks to the awesome [Eisvogel pandoc LaTeX template](https://github.com/Wandmalfarbe/pandoc-latex-template).
