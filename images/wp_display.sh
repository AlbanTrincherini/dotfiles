#!/usr/bin/bash

echo "|  |  |" > README.md
echo "| ---- | ---- |" >> README.md
ls -1 | \
	grep -E '(\.jpe?g|\.png)$' | \
	jq -Rr @uri | \
	awk 'FNR%2==1{prev=$0}FNR%2==0{print "| ![image](./"prev") | ![image](./" $0") |"}' \
	>> README.md
