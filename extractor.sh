#!/bin/bash
set -euo pipefail
COM=$1
COL=$2
awk -F',' -v col="$COL" '{print $col}' "$COM"








