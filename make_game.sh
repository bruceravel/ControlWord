#!/bin/sh

org2latex rules.org
pdflatex rules.tex
pdflatex book.tex

files='0words 1word 2words remove'
for f in $files; do
    inkscape -A $f.pdf $f.svg
done

pdfunite 0words.pdf 1word.pdf 1word.pdf 2words.pdf remove.pdf all_rules.pdf
