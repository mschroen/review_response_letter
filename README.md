# Review and Response Letters
Template for Latex and/or Pandoc to quickly write reviews and (author) response letters 

## Review Comments to a Manuscript

Use the examples in folder `RC_to_MS/`.

<img alt="Screenshot of the output PDF of Review Comments to the Manuscript" src="https://cloud.githubusercontent.com/assets/7942719/26349934/c705b42c-3fb1-11e7-9b12-e007d54f9a47.png" style="max-width: 100%" />

### Option A: Latex

```  
\section{Anonymuous Reviewer}
\subsection{Page 4 Line 15}
begin{quote} The cat in the box is \hl{dead}. \end{quote}
\RC It could be alive as well.
```

Then run `pdflatex myletter.tex` to make `myletter.pdf`.


### Option B: Markdown

```
# Anonymuous Reviewer
## Page 4 Line 15
> The cat in the box is \hl{dead}.
\RC It could be alive as well.
```

Then run `pandoc -s -S --template ../templates/RC_to_MS-pandoc.tex myletter.md -o myletter.pdf` to make `myletter.pdf`.



## Author Response to Review Comments

Use the examples in folder `AR_to_RC/`.

<img alt="Screenshot of the output PDF of a Author Response Letter to Review Comments" src="https://cloud.githubusercontent.com/assets/7942719/26349939/c9889c00-3fb1-11e7-91c6-908012e2797e.png" style="max-width: 100%" />

### Option A: Latex

```  
\section{Reviewer 1}
\subsection{Page 4 Line 15}
\RC Paragraph on how I do not like the paper.
\AR Thank you, we changed the text as suggested.
begin{quote} The cat in the box is \DIFdelbegin \DIFdel{dead}\DIFdelend \DIFaddbegin \DIFadd{alive}\DIFaddend . \end{quote}
```

Then run `pdflatex myletter.tex` to make `myletter.pdf`.


### Option B: Markdown

```
# Reviewer 1
## Page 4 Line 15
\RC Paragraph on how I do not like the paper.
\AR Thank you, we changed the text as suggested.
> The cat in the box is \DIFdelbegin \DIFdel{dead}\DIFdelend \DIFaddbegin \DIFadd{alive}\DIFaddend .
```

Then run `pandoc -s -S --template ../templates/AR_to_RC-pandoc.tex myletter.md -o myletter.pdf` to make `myletter.pdf`.

## Additional features

- supports latexdiff commands
- supports text highlighting with `\hl{}`
- supports tables and figures,
- supports non-labeled paragraphs, starting with `\AR*` or `\RC*` instead of `\AR` or `\RC`, respectively.

