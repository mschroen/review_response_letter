# Review Response Letter
Template for Latex and/or Pandoc to quickly write (author) response letters to reviews 

<img alt="Screenshot of the output PDF of a review response letter." src="https://cloud.githubusercontent.com/assets/7942719/26236559/4072b56a-3c71-11e7-84c6-5ba4599fd031.png" style="max-width: 100%" />

## Either write in Latex

1. Edit the content of `./RRL.tex`,
2. run `pdflatex templates/RRL.tex` to make `./RRL.pdf`.


## Or write in Markdown

1. Edit the content of `./RRL.md`,
2. run `pandoc -s -S --template templates/RRL-pandoc.tex RRL.md -o RRL.pdf` to make `./RRL.pdf`.

## How to write?

1. Start with reviewer \#1: `\section{Reviewer \#1}` or `# Reviewer \#1`.
2. The first of his comments refers to `\subsection{Page 4 Line 15}` or `## Page 4 Line 15`.
3. Paste the reviewer comment as a new paragraph starting with the command `\RC I do not like the paper`.
4. Write the author response starting with `\AR Thank you, we changed the text as suggested`.
5. Paste the changed text from your *latexdiff* output into a quote environment:
    `begin{quote} The cat in the box is \DIFdelbegin \DIFdel{dead}\DIFdelend \DIFaddbegin \DIFadd{alive}\DIFaddend .\end{quote}`  
    or  
    `> The cat in the box is \DIFdelbegin \DIFdel{dead}\DIFdelend \DIFaddbegin \DIFadd{alive}\DIFaddend .`
6. Add figures or tables.
7. Run.
8. Done :-)

Quick -- easy -- beautiful.
