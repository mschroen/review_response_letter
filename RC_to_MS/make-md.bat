@echo off
set NAME=Einstein1905
pandoc -s -S --template ../templates/%NAME%-pandoc.tex %NAME%.md -o %NAME%.pdf
