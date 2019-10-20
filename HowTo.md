# How to use _main.rmd_
--- Andy Clifton

To run _main.rmd_, follow the instructions below for your platform and preferred interface.

Feedback or information on different ways to run _main.rmd_ is always welcome. Please submit this as an issue to https://github.com/AndyClifton/LiterateDemo/issues.

# Prerequisites
You will need:

- A working R installation. This can be obtained from http://www.r-project.org. You may find RStudio to be a good IDE.
- A working LaTeX installation. This can be obtained from https://www.latex-project.org/get/.
- Pandoc. _rmarkdown_ calls Pandoc. I suggest you start with the [instructions for installing pandoc](https://rmarkdown.rstudio.com/docs/articles/pandoc.html).

## Set up your directory structure
Create a directory somewhere for your project (let's call this `$ROOT`). Clone the GitHub repository or download the .zip from https://github.com/AndyClifton/LiterateDemo/ into that directory .

In `$ROOT` you should now have:

- A 'code' directory with some .R files.
- A 'data' directory with a couple of short .csv data files.

## Update `main.rmd`
1. Open `main.rmd` in an editor.
  1. Change `project.root` to be `$ROOT`, e.g. `base.dir <- file.path('/user/ahab/files/stuff/test/')`.
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

These commands are all included in the [`make_main.r`](make_main.r) file, together with several housekeeping steps.

<sup><b id="f1">1</b></sup> Many thanks to Ralf Stubner for providing this information in an answer through [stackoverflow.com](https://stackoverflow.com/questions/51676427/r-markdown-ref-not-working/51677282?noredirect=1#comment103233545_51677282). [↩](#a1)

## How to run `make_main.r` in R
You need to run `make_main.r` in R. This will render `_main.rmd_`, which means that it runs the analysis and generates the documentation.

- On **mac or Linux/Unix systems** with R and LaTeX installed, run the shell script [`make_main.sh`](make_main.sh) from the terminal. It should build all of the output files.

# Integration with Git
You might like to try to integrate the above workflow with a Git system.

## Commit the results back to Git
Once we have rendered the file, we could commit it back to our git. There are [lots of ways to do this](https://stackoverflow.com/questions/5064563/add-line-break-to-git-commit-m-from-the-command-line), and lots of pointers on [how to write a good commit message](https://github.com/erlang/otp/wiki/Writing-good-commit-messages).

- On **mac or Linux/unix systems** run `git commit -m "My head line" -m "My content line."`. I have included this in the comments in the shell script `make_main.sh`, but not implemented it - it seemed a bit cheeky to write stuff to your git...

 **END**
