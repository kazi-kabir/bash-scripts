#!/bin/bash

destination_dir="/Users/non-root-user/Documents"

# find all epub files in the current directory and move them to the destination directory
find . -name "*.epub" -exec mv {} $destination_dir \;