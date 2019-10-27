#!/usr/bin/env Rscript

# Let's generate all of the possible outputs from main

# Housekeeping
## Delete all old versions
unlink("publications",recursive=TRUE, force=TRUE)

## Remove current markdown file
file.remove("main.md")

# PDF (works well)

## generate the file
rmarkdown::render("main.rmd",
  output_format=c('bookdown::pdf_document2'),
  run_pandoc = TRUE,
  knit_root_dir= getwd())

## Stuff to fix in the PDF:
# - ?

## create destination
pdf.dir <- file.path(getwd(),
  "publications",
  "PDF")
dir.create(pdf.dir,
  recursive=TRUE)

## move publication
file.copy(c("main.tex","main.pdf"), pdf.dir)
file.remove(c("main.tex","main.pdf"))

# HTML
## generate the file
rmarkdown::render("main.rmd",
  output_format=c('bookdown::html_document2'),
  run_pandoc = TRUE,
  clean=TRUE)

## Stuff to fix in the HTML:
# - ?

## create destination
html.dir <- file.path(getwd(),"publications","HTML")
dir.create(html.dir,recursive=TRUE)

## move publication
file.copy("main.html", html.dir)
file.remove("main.html")

# GitHub markdown
## generate the file
rmarkdown::render("main.rmd",
    rmarkdown::md_document(variant = "gfm"),
    run_pandoc = TRUE,
    clean=TRUE)

## Stuff to fix in the markdown:
# - won't really know until we load it up

## create the destination
gfm.dir <- file.path(getwd(),"publications","md")
dir.create(gfm.dir,recursive=TRUE)
# move the publication
file.copy(c("main.md"), gfm.dir)
file.remove(c("main.md"))
## move the images
file.copy(c("main_files"), gfm.dir, recursive=TRUE)
unlink(c("main_files"),recursive=TRUE, force=TRUE)

# WORD
## generate the file
rmarkdown::render("main.rmd",
  output_format=c('word_document2'),
  run_pandoc = TRUE,
  clean=TRUE)

## Stuff to fix in the word document:
# - section numbers aren't showing, but the cross-references appear to work. Not clear if this is pandoc or word...

## create the destination
word.dir <- file.path(getwd(),"publications","docx")
dir.create(word.dir,recursive=TRUE)
## move the publication
file.copy("main.docx", word.dir)
file.remove("main.docx")

# END OF FILE
