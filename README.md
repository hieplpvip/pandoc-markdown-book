# Pandoc Markdown Book

#### Write your book in Markdown and have Pandoc convert it to PDF/EPUB/HTML

## Usage

### Requirements

To use this template, you need:

- `pandoc` and `pandoc-crossref` (must match in version)
- Full TeX Live distribution

### Building

Run the script for the output format you want to build. For example:

```bash
./compile_pdf.sh
```

This will create a PDF file in the `build` directory.

If you want to publish your ebook on Kindle, use [kindlegen](https://www.amazon.com/gp/feature.html?docId=1000765211) to convert `epub` to `mobi`.

```bash
./kindlegen ./build/epub/output.epub
```

### Folder structure

```
pandoc-markdown-book/        # Root directory.
|- build/                    # Folder used to store output files.
|- src/                      # Markdowns files. Each chapter is stored in one folder.
|  |- chapter-01             # Chapter 1
|  |  |- 00-title.md         # Chapter title
|  |  |- 01-adessent in.md   # First article of chapter 1
|  |  |- ...
|  |- ...
|- img/                      # Images folder.
|  |- book-cover.pdf         # Cover page for PDF.
|  |- book-cover.png         # Cover page for EPUB.
|- templates/                # Templates folder.
|  |- eisvogel.latex         # Template for PDF.
|  |- epub.css               # CSS for EPUB.
|- backgrounds/              # Backgrounds folder.
|  |- background10.pdf       # Background for title page.
|- metadata.yml              # Metadata content (title, author...).
|- compile_epub.sh           # Script to compile EPUB.
|- compile_html.sh           # Script to compile HTML.
|- compile_pdf.sh            # Script to compile PDF.
```

## Caveats

- Though `pandoc` obviously supports LaTeX equations, only PDF is able to render them correctly. EPUB will not look good at all. HTML is okay, though not as good as PDF.

## Credits

This template is modified based on original work by [Ryan Frazier](https://gitlab.com/pianomanfrazier/).

Many thanks to the awesome [Eisvogel pandoc LaTeX template](https://github.com/Wandmalfarbe/pandoc-latex-template).
