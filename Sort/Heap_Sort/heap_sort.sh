#!/bin/bash

# Data array
data=(64 34 25 12 22 11 90)

heapify() {
    local n=$1
    local i=$2
    local largest=$i
    local l=$((2 * i + 1))
    local r=$((2 * i + 2))

    if (( l < n && data[l] > data[largest] )); then
        largest=$l
    fi

    if (( r < n && data[r] > data[largest] )); then
        largest=$r
    fi

    if (( largest != i )); then
        local temp=${data[$i]}
        data[$i]=${data[$largest]}
        data[$largest]=$temp
        heapify $n $largest
    fi
}

heap_sort() {
    local n=${#data[@]}
    # Build heap
    for ((i = n / 2 - 1; i >= 0; i--)); do
        heapify $n $i
    done
    # Extract elements
    for ((i = n - 1; i > 0; i--)); do
        local temp=${data[0]}
        data[0]=${data[$i]}
        data[$i]=$temp
        heapify $i 0
    done
}

heap_sort
echo "Sorted array: ${data[@]}"
