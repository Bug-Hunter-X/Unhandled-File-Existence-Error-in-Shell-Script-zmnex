#!/bin/bash

# This script processes a file, handling the case where it doesn't exist.

file_to_process="my_file.txt"

# Check if the file exists
if [ -f "$file_to_process" ]; then
  # Process the file
  cat "$file_to_process" | while read line; do
    echo "Processing line: $line"
done
else
  # Handle the case where the file does not exist
  echo "Error: File '$file_to_process' not found."
exit 1
fi