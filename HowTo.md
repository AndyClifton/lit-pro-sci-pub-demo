

To run _main.rmd_, follow the instructions below for your platform and preferred interface.

Feedback or information on different ways to run _main.rmd_ is always welcome. Please submit this as an issue to https://github.com/AndyClifton/LiterateDemo/issues.

# Start here
Install R (<http://www.r-project.org>) following their instructions for your system.

## Set up your directory structure
1. Create a directory somewhere and place the contents of the zip file into that directory (let's call this `$root`). *It is recommended that there be nothing else in the directory*.
2. Load the data files into a 'data' directory in `$root`.

1. Open `main.rmd`. Modify `project.root` to be `$root`.
2. ...
3. Run `main.rmd`. Either:
  1. To update `main.pdf`, run `rmarkdown::render('main.rmd', 'pdf_document2')` in the R console
  2. To update `main.md`, run `rmarkdown::render('main.rmd', 'md_document')` in the R console
