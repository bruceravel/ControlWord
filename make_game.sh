#!/bin/sh

org2latex rules.org
pdflatex rules.tex
pdflatex book.tex

files='start1 start2 start3 start4 start5 start6 round_counter'
for f in $files; do
    inkscape -A $f.pdf $f.svg
done

pdfunite round_counter start1 start2 start3 start4 start5 start6 game_materials.pdf
