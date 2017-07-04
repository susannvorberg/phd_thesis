#!/bin/sh

#build html book
Rscript -e "bookdown::render_book('/home/vorberg/Documents/phd_thesis/index.Rmd', 'bookdown::gitbook', output_dir='/home/vorberg/Documents/phd_thesis/docs')"

#build pdf book
Rscript -e "bookdown::render_book('/home/vorberg/Documents/phd_thesis/index.Rmd', 'bookdown::pdf_book', output_dir='/home/vorberg/Documents/phd_thesis/pdf')"

#commit and push to github
git add --all *
git commit -m "Update the book" 
git push 
