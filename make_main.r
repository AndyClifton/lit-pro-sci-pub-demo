# Let's generate all of the possible outputs from main

rmarkdown::render("main.rmd", output_format=c("pdf_document2"))
rmarkdown::render("main.rmd", output_format=c("md_document"))
rmarkdown::render("main.rmd", output_format=c("html_document"))
