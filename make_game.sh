#!/bin/sh
org2latex rules.org
pdflatex book.tex
inkscape -A 0words.pdf 0words.svg
inkscape -A 1word.pdf 1word.svg
inkscape -A 2words.pdf 2words.svg
