#!/bin/zsh

# Example of how to use
# 1. Create markdown file in the markdown folder
# 2. ./generate-html.sh filename.md filenameout.html

input="$1"
output="$2"

touch html/$output
cat html/boilerplate/top-bp.html >> html/$output
pandoc -f markdown -t html markdown/$input >> html/$output
cat html/boilerplate/bottom-bp.html >> html/$output
