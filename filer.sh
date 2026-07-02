#!/bin/bash
if (($# >= 2))
then
    PATH=$1
    NAMES=$2
elif (($# == 1))
then
    PATH=$1
    echo "Enter an array of names separated by spaces:"
    read -a NAMES
else
    echo "Usage: $0 <path> <name1 name2 ...>"
    exit 1
fi
count=0
for file in $PATH; do
    if [ -f $file ]; then
        mv $file ${NAMES[$count]}
        ((count++))
    fi
done
