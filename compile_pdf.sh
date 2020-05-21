#!/bin/bash

mkdir -p build/pdf

pandoc \
    --pdf-engine=xelatex \
    --template=./templates/eisvogel.latex \
    --from markdown \
    --toc -N \
    --listings \
    --filter pandoc-crossref \
    --lua-filter=pagebreak.lua \
    -o build/pdf/output.pdf \
    metadata.yml \
    src/*/*.md
    # --top-level-division=chapter \
    # -V book \
