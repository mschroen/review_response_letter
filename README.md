# Review Response Letter
Template for Latex and/or Pandoc to quickly write (author) response letters to reviews 

<img alt="Screenshot of the output PDF of a review response letter." src="https://cloud.githubusercontent.com/assets/7942719/26236559/4072b56a-3c71-11e7-84c6-5ba4599fd031.png" style="max-width: 100%" />

## Either write in Latex

1. Edit the content of `./RRL.tex`,
  ```  
  \section{Reviewer 1}
  \subsection{Page 4 Line 15}
  \RC Paragraph on how I do not like the paper.
  \AR Thank you, we changed the text as suggested.
  begin{quote} The cat in the box is \DIFdelbegin \DIFdel{dead}\DIFdelend \DIFaddbegin \DIFadd{alive}\DIFaddend . \end{quote}
  ```
2. run `pdflatex templates/RRL.tex` to make `./RRL.pdf`.


## Or write in Markdown

1. Edit the content of `./RRL.md`,
  ```
  # Reviewer 1
  ## Page 4 Line 15
  \RC Paragraph on how I do not like the paper.
  \AR Thank you, we changed the text as suggested.
  > The cat in the box is \DIFdelbegin \DIFdel{dead}\DIFdelend \DIFaddbegin \DIFadd{alive}\DIFaddend .
  ```
2. run `pandoc -s -S --template templates/RRL-pandoc.tex RRL.md -o RRL.pdf` to make `./RRL.pdf`.

## Additional features

- supports latexdiff commands
- supports tables and figures,
- supports non-labeled paragraphs, starting with `\AR*` or `\RC*` instead of `\AR` or `\RC`, respectively.

