#!/bin/bash 
set -euo pipefail
TIME=$(date +%Y-%m-%d_%H-%M-%S)
COM=$1
[ -e "OUTPUT" ] || mkdir "OUTPUT"
python analysis.py $COM | sort -t',' -k2 > "OUTPUT/lot_$TIME.csv"



