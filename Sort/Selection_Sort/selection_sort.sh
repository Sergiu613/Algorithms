#!/bin/bash

data=(64 25 12 22 11)
n=${#data[@]}

for ((i = 0; i < n - 1; i++)); do
    min_idx=$i
    for ((j = i + 1; j < n; j++)); do
        if [ ${data[j]} -lt ${data[min_idx]} ]; then
            min_idx=$j
        fi
    done
    if [ $min_idx -ne $i ]; then
        temp=${data[i]}
        data[i]=${data[min_idx]}
        data[min_idx]=$temp
    fi
done

echo "Sorted array: ${data[@]}"
