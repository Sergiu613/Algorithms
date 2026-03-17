#!/bin/bash
# Data array
data=(64 34 25 12 22 11 90)
n=${#data[@]}

for ((i = 0; i < n - 1; i++)); do
    for ((j = 0; j < n - i - 1; j++)); do
        if [ ${data[j]} -gt ${data[j+1]} ]; then
            temp=${data[j]}
            data[j]=${data[j+1]}
            data[j+1]=$temp
        fi
    done
done

echo "Sorted array: ${data[@]}"
