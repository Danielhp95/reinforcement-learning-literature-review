#!/bin/bash
VAR=first-year-report
rm -f $VAR.out $VAR.log $VAR.blg $VAR.bbl # Or however many of these you want
pdflatex -synctex=1 -shell-escape $VAR.tex
bibtex $VAR
pdflatex -shell-escape $VAR.tex
pdflatex -shell-escape $VAR.tex
