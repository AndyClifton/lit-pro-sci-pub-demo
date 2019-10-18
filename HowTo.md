

To run _main.rmd_, follow the instructions below for your platform and preferred interface.

Feedback or information on different ways to run _main.rmd_ is always welcome. Please submit this as an issue to https://github.com/AndyClifton/LiterateDemo/issues.

# Start here
Install R (<http://www.r-project.org>) following their instructions for your system.

## Set up your directory structure
Create a directory somewhere and clone the GitHub repository / download the .zip and expand it into that directory (let's call this `$ROOT`).

You should have:
- A 'code' directory with some .R files.
- A couple of short .csv data files in a 'data' directory.

## Update `main.rmd`
1. Open `main.rmd` in your editor.
  1. Change `project.root` to be `$ROOT`.
  1. Change `made.by` to whoever's name you want to appear on the figures.

## Render the output files
Rendering is the process of running the markdown file, which runs the analysis and generates the documentation at the same time.

We use _rmarkdown::render()_ to generate the outputs <sup id="a1">[1](#f1)</sup>. At the R command line, try the following:
> 1. _rmarkdown::render("path/to/file.Rmd")_ will use the first defined format.
>
> 2. You can also use _rmarkdown::render("path/to/file.Rmd", output_format = "all")_ to use all formats given in the file, or
> 3. Use _rmarkdown::render("path/to/file.Rmd", output_format = c("bookdown::pdf_document2", "bookdown::html_document2"))_ to specify a list of output formats.
>
> See _?rmarkdown::render_ for the full details."
>
> -- Ralf Stubner

These commands are all captured in the [`make.r`](make.r) file

<sup><b id="f1">1</b></sup> Many thanks to Ralf Stubner for providing this information in an answer through [stackoverflow.com](https://stackoverflow.com/questions/51676427/r-markdown-ref-not-working/51677282?noredirect=1#comment103233545_51677282). [↩](#a1)
