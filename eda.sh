#!/bin/bash 
set -euo pipefail
TIME=$(date +%Y-%m-%d_%H-%M-%S)
COM=$1
sed 's/NA/0/g' $COM | python analysis.py

