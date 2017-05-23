@echo off
set NAME=Einstein1905
pdflatex %NAME%.tex
rm %NAME%.aux
rm %NAME%.log
rm %NAME%.out
