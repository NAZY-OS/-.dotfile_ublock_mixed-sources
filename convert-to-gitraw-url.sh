#!/bin/bash

# Create a text file with the desired filename
output_file="raw_url-list.lst"
base_url="https://raw.githubusercontent.com/NAZY-OS/.dotfile_ublock_mixed-sources/refs/heads/main/"

# Find all .txt files and prepend the base URL, saving them to the text file
find . -type f -name "*.txt" | sed "s|^|$base_url|" > "$output_file"

# Optional: Output the found files to the console
echo "The following .txt files have been found and saved to $output_file:"
cat "$output_file"
