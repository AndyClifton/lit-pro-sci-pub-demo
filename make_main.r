#!/usr/bin/env Rscript

# Let's generate all of the possible outputs from main

rmarkdown::render("main.rmd",
  output_format=c('md_document'),
  output_dir = c('publications'))
rmarkdown::render("main.rmd",
  output_format=c('html_document'),
  output_dir = c('publications'))
rmarkdown::render("main.rmd",
  output_format=c('pdf_document2'),
  output_dir = c('publications'))
