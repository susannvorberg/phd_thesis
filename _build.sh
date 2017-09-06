

#build pdf book
#pandoc --latex-engine=xelatex --top-level-division=chapter --template latex/phd_thesis_template.tex --standalone --bibliography=bib/structure_prediction.bib 01-summary.md 02-acknowledgements.md toc.md 03-intro.md 04-methods.md  -o pdf/PhD_thesis_Susann_Vorberg.pdf

Rscript -e "bookdown::render_book('~/Documents/phd_thesis/index.Rmd', 'bookdown::pdf_book', output_dir='~/Documents/phd_thesis/pdf')"

#build html book
rm -rf ~/Documents/phd_thesis/docs/*
cp ~/Documents/phd_thesis/pdf/*pdf ~/Documents/phd_thesis/docs/
Rscript -e "bookdown::render_book('~/Documents/phd_thesis/index.Rmd', 'bookdown::gitbook', output_dir='~/Documents/phd_thesis/docs')"

