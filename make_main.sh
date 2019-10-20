#!/bin/bash

echo "1. Running R..."
echo "Rendering make_main.r and running housekeeping tasks..."
R < make_main.r --no-save
echo "... complete."

echo "2. Updating Git repository..."
# This has been included for completeness but not implemented as I don't
# want people hammering my repo...
# git commit -m "My commit title" -m "My commit content lines."
