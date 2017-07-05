#!/bin/sh

#build html book
Rscript -e "bookdown::render_book('~/Documents/phd_thesis/index.Rmd', 'bookdown::gitbook', output_dir='~/Documents/phd_thesis/docs')"

#build pdf book
pandoc --latex-engine=xelatex --top-level-division=chapter --template latex/phd_thesis_template.tex --natbib --variable tables=yes --standalone --bibliography=book.bib 01-summary.md 02-acknowledgements.md toc.md 03-intro.md 04-methods.md  -o pdf/PhD_thesis_Susann_Vorberg.pdf

#Rscript -e "bookdown::render_book('/home/vorberg/Documents/phd_thesis/index.Rmd', 'bookdown::pdf_book', output_dir='/home/vorberg/Documents/phd_thesis/pdf')"

#commit and push to github
git add --all *
git commit -m "Update the book" 
git push 
