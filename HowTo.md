

To run _main.rmd_, follow the instructions below for your platform and preferred interface.

Feedback or information on different ways to run _main.rmd_ is always welcome. Please submit this as an issue to https://github.com/AndyClifton/LiterateDemo/issues.

# Start here
Install R (<http://www.r-project.org>) following their instructions for your system.

## Set up your directory structure
1. Create a directory somewhere and place the contents of the zip file into that directory (let's call this `$root`). *It is recommended that there be nothing else in the directory*.
2. Load the data files into a 'data' directory in `$root`.

# Apple OS X

## Rstudio
Rstudio is a popular GUI/IDE for R and is available from http://rstudio.com. Follow their instructions to install it on your system.

Then create a directory with all of the code and files (see above).

3. Open `main.rmd` in Rstudio.
  1. Modify `project.root` to be `$root`.
  2. ...
4. Run `main.rmd` in Rstudio. Either:
  1. hit `chunks -> run all` to run all of the R code and not generate any output PDF or HTML files.
  2. hit `knit HTML` to generate the html output file; this will create an HTML file but will not generate any data in memory
  3. hit `knit PDF` to generate the PDF output file; this will create an HTML file but will not generate any data in memory
