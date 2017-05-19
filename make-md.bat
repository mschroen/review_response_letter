@echo off
pandoc -s -S --template templates/RRL-pandoc.tex RRL.md -o RRL.pdf
