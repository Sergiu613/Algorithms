#!/bin/bash

# Data array
data=(3 1 4 2)

is_sorted() {
    for ((i = 0; i < ${#data[@]} - 1; i++)); do
        if (( data[i] > data[i+1] )); then
            return 1
        fi
    done
    return 0
}

shuffle() {
    n=${#data[@]}
    for ((i = n - 1; i > 0; i--)); do
        j=$(( RANDOM % (i + 1) ))
        temp=${data[i]}
        data[i]=${data[j]}
        data[j]=$temp
    done
}

until is_sorted; do
    shuffle
done

echo "Sorted array: ${data[@]}"
