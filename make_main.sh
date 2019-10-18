#!/bin/bash
#
# this file based on https://github.com/gi-ev/LNI/blob/master/prepare_for_CTAN
#
# Use this file (on a unix system) to generate the zip archive for CTAN
# ctanify is part of TeX Live and MiKTeX distributions
# Please note, that you need at least version 1.9 to add the symbolic link correctly.
#

echo "Render main output from main.Rmd..."


Rscript make_main.r
echo "...done."
