#!/bin/bash
DIR="./*"

for file in $DIR; do
    [ -e $file ] || continue
    if [ -d $file ]; then
        for subfile in $file/*; do
            [ -e $subfile ] || continue
            if [ -f $subfile ]; then
                if [[ $subfile == pyvenv.cfg ]]; then
                    echo "True: there is a python virtual environment in $DIR"
                    exit 0
                fi
            fi
        done
    fi
done
echo "False: there is no python virtual environment in $DIR"


