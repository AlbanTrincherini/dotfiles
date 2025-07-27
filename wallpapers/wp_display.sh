#!/usr/bin/bash

OUTPUT="README.md"
echo "|  |  |" >  "$OUTPUT"
echo "| ---- | ---- |" >> "$OUTPUT"
# 1) List all files
# 2) Filter out stuff that isn't an image
# 3) URL encode
# 4) Format for markdown table
# 5) Write output
ls -1 | \
	grep -E '(\.jpe?g|\.png)$' | \
	jq -Rr @uri | \
	awk 'FNR%2==1{prev=$0}FNR%2==0{print "| ![image](./"prev") | ![image](./" $0") |"}' \
	>> "$OUTPUT"
