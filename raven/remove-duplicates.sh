#!/bin/bash

input_file="proprietary-files-vendor.txt"
output_file="proprietary-files-vendor-new.txt"

awk '!seen[$0]++' "$input_file" > "$output_file"

echo "Duplicate lines removed. Output saved to $output_file"