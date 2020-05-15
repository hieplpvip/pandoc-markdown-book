#!/bin/bash

mkdir -p build/pdf

pandoc \
    --pdf-engine=xelatex \
    --template=./templates/eisvogel.latex \
    --from markdown \
    --toc -N \
    --listings \
    --filter pandoc-crossref \
    -o build/pdf/output.pdf \
    src/title.txt src/*.md
    # --top-level-division=chapter \
    # -V book \