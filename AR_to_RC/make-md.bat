@echo off
set NAME=Einstein1905
pandoc -s -S --template ../templates/AR_to_RC-pandoc.tex %NAME%.md -o %NAME%.pdf
