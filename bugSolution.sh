#!/bin/bash

# This script demonstrates the correct way to process files with spaces in their names.
# It uses double quotes to prevent word splitting.

files=("file1.txt" "file with spaces.txt" "file2.txt")

for file in "$files"; do
  echo "Processing: " "$file"
  # the double quotes are important for preventing word splitting
  # now this command will work even for filenames containing spaces
  # example command (replace with your actual processing command)
  ls "$file" 
  # other commands working with files should also use double quotes
  # for example: cat "$file"
done