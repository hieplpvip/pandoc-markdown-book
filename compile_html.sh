#!/bin/bash

mkdir -p build/html

pandoc \
    -f markdown+smart -t markdown-smart \
    -o build/html/index.html \
    --highlight-style tango \
    --filter pandoc-crossref \
    -s -t slidy \
    metadata.yml \
    src/*/*.md

cp -r img build/html/
