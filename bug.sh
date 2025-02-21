#!/bin/bash

# This script attempts to process files in a directory, but it has a subtle bug.
# It uses a loop that iterates over filenames, but does not correctly handle filenames with spaces.

files=("file1.txt" "file with spaces.txt" "file2.txt")

for file in "$files"; do
  echo "Processing: $file"
  # Some processing command here...
  # This might fail for filenames with spaces because of word splitting
  # because of the use of unquoted variables in the loop
  # like ls $file instead of ls "$file"
done