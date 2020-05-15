#!/bin/bash

mkdir -p build/epub

pandoc \
    --filter pandoc-crossref \
    --css templates/epub.css \
    --toc -N \
    -o build/epub/output.epub \
    src/title.txt src/*.md
    # -f markdown+smart -t markdown-smart \
