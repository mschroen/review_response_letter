@echo off
set NAME=Einstein1905
pandoc -s -S --template ../templates/RC_to_MS-pandoc.tex %NAME%.md -o %NAME%.pdf
