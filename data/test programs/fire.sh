#!/bin/bash
a=(10 7 23 38 29 278)
b=(83 458 37 29 387 36)
c=(4589 49 39 48 29 547)
y=()
for ((i=0; i<${#a[@]}; i++)); do
    for ((l = 0; l < ${#b[@]}; l++)); do
        if ((a[$i] == b[$l])); then
            y+=(${a[$i]})
        fi
    done
done

for ((i=0; i<${#y[@]}; i++)); do
    for ((l=0;l<${#c[@]}; l++)); do
        if ((y[$i] == c[$l])); then
            echo "${y[$i]}"
        fi
    done
done 










