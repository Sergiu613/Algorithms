#!/bin/bash

data=(64 34 25 12 22 11 90)
n=${#data[@]}

for ((i = 1; i < n; i++)); do
    key=${data[i]}
    j=$((i - 1))
    
    while ((j >= 0 && data[j] > key)); do
        data[j+1]=${data[j]}
        j=$((j - 1))
    done
    
    data[j+1]=$key
done

echo "Sorted array: ${data[@]}"
