# Shell Script Bug: Handling Filenames with Spaces

This repository demonstrates a common bug in shell scripts related to handling filenames that contain spaces. The script `bug.sh` incorrectly processes files with spaces in their names due to word splitting.  The corrected version `bugSolution.sh` shows the proper method to avoid this issue.

## Bug Description

The original script iterates through an array of filenames. However, when a filename contains spaces, the shell interprets the spaces as delimiters, splitting the filename into multiple words. This leads to unexpected behavior or errors in commands that use the filename. 

## Solution

The solution involves quoting the filename variables to prevent word splitting. By using double quotes around the variable "`$file`", the shell treats the entire string as a single argument, even if it contains spaces.