#!/bin/sh

/usr/bin/Rscript -e "bookdown::render_book('/home/vorberg/Documents/phd_thesis/docs/index.Rmd', 'bookdown::gitbook(lib_dir = "libs")')"
