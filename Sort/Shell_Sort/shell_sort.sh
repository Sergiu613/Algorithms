#!/bin/bash

# Data array
data=(64 34 25 12 22 11 90)
n=${#data[@]}

for ((gap = n / 2; gap > 0; gap /= 2)); do
    for ((i = gap; i < n; i++)); do
        temp=${data[i]}
        j=$i
        while ((j >= gap && data[j - gap] > temp)); do
            data[j]=${data[j - gap]}
            j=$((j - gap))
        done
        data[j]=$temp
    done
done

echo "Sorted array: ${data[@]}"
