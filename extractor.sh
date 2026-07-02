#!/bin/bash
set -euo pipefail
COM=$1
COL=$2
awk -F',' -v col="$COL" '{print $col}' "$COM" > extracted_column.txt
echo "What do you want to count in the column?"
read COUNT
grep -n "$COUNT" extracted_column.txt > count_results.txt
wc -l < count_results.txt














