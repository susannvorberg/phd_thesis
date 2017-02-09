#!/bin/sh

#build html book
/usr/bin/Rscript -e "bookdown::render_book('/home/vorberg/Documents/phd_thesis/docs/index.Rmd', 'bookdown::gitbook(lib_dir = "libs")')"

#commit and push to github
git add --all *
git commit -m "Update the book" 
git push 
