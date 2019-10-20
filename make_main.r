#!/usr/bin/env Rscript

require(bookdown)
require(knitr)

# Let's generate all of the possible outputs from main

# PDF
## generate the file
rmarkdown::render("main.rmd",
  output_format=c('pdf_document2'),
  knit_root_dir=getwd())

## move publication
pdf.dir <- file.path(getwd(),"publications","PDF")
dir.create(pdf.dir,recursive=TRUE)
file.copy("main.pdf", pdf.dir)
file.remove("main.pdf")

# HTML
## generate the file
rmarkdown::render("main.rmd",
  output_format=c('html_document'),
  knit_root_dir=getwd())

## move publication
html.dir <- file.path(getwd(),"publications","HTML")
dir.create(html.dir,recursive=TRUE)
file.copy("main.html", html.dir)
file.remove("main.html")

# GitHub markdown
## generate the file
rmarkdown::render("main.rmd",
    output_format=c('md_document'))

## move the publication
gfm.dir <- file.path(getwd(),"publications","GitHub_Markdown")
dir.create(gfm.dir,recursive=TRUE)
file.copy("main.md", gfm.dir)
file.remove("main.md")
## move the images
file.copy("main_files", gfm.dir, recursive=TRUE)
unlink("main_files",recursive=TRUE, force=TRUE)

# WORD
## generate the file
rmarkdown::render("main.rmd",
  output_format=c('word_document'),
  knit_root_dir=getwd())

## move the publication
word.dir <- file.path(getwd(),"publications","word_document")
dir.create(word.dir,recursive=TRUE)
file.copy("main.docx", word.dir)
file.remove("main.docx")

# END OF FILE
