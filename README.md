# Introduction
This is the repository for an R file that demonstrates the concept of Literate Programming.

Literate programming combines data analysis with documentation. It can contribute to reproducible research by enabling reproducibilty.

Conceivably, the Literate programming could be combined with a Docker image for complete portability of results.

# Requirements
1. A working installation of R with up-to-date packages. This can be obtained from e.g. http://r-project.org.
   1. `ggplot2` version 2.2 or higher [is required to generate titles, captions, and other annotations on figures](http://ggplot2.tidyverse.org/reference/labs.html).
2. A GUI for R. [R-studio is a popular option](http://rstudio.com).
3. Patience and a sense of humor.

# Releases
You can find the most recent _stable_ version of this code in the [releases](../../releases) part of this repository.

# How To Use This Code
1. Create a directory somewhere and place the contents of the zip file into that directory (let's call this `$root`). *It is recommended that there be nothing else in the directory*.
2. Load the data files into a 'data' directory in `$root`. You can add directories for different sites, etc.
3. Open `main.rmd` in Rstudio. 
  1. Modify `project.root` to be `$root`.
  2. ...
4. Run `main.rmd` in Rstudio. Either:
  1. hit `chunks -> run all` to run all of the R code and not generate any output PDF or HTML files.
  2. hit `knit HTML` to generate the html results file; this will create an HTML file but will not generate any data in memory
  3. hit `knit PDF` to generate the html results file; this will create an HTML file but will not generate any data in memory

# Documentation
Documentation is provided in several forms:
* within `main.rmd`
* within `main.pdf`, which will also contain the results when run using `knitr`.
* within `main.html`, which will also contain the results when run using `knitr`.

# Reporting Bugs and Requesting Improvements
Please use the [issue tracker](../../issues) to report problems or request improvements.

# Comments
This software is provided as is, with no guarantees.

# Recent changes
See /releases.

# Code Maintainers
* [Andy Clifton](mailto:clifton@windfors.de), WindForS Wind Energy Research Cluster

# Project Contributors
* Nikola Vasiljevic, DTU
