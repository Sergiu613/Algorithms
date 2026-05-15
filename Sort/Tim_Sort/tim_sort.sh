#!/bin/bash

data=(64 34 25 12 22 11 90 5 8 9 1 3 2 4 7 6 45 23 11 22)
n=${#data[@]}
RUN=32

min() {
    echo $(( $1 < $2 ? $1 : $2 ))
}

insertion_sort() {
    local left=$1
    local right=$2
    for ((i = left + 1; i <= right; i++)); do
        local key=${data[i]}
        local j=$((i - 1))
        while ((j >= left && data[j] > key)); do
            data[j+1]=${data[j]}
            ((j--))
        done
        data[j+1]=$key
    done
}

merge() {
    local l=$1
    local m=$2
    local r=$3
    local left=("${data[@]:l:m-l+1}")
    local right=("${data[@]:m+1:r-m}")
    
    local i=0 j=0 k=$l
    while ((i < ${#left[@]} && j < ${#right[@]})); do
        if (( left[i] <= right[j] )); then
            data[k++]=${left[i++]}
        else
            data[k++]=${right[j++]}
        fi
    done
    while ((i < ${#left[@]})); do data[k++]=${left[i++]}; done
    while ((j < ${#right[@]})); do data[k++]=${right[j++]}; done
}

for ((i = 0; i < n; i += RUN)); do
    r_bound=$(min $((i + RUN - 1)) $((n - 1)))
    insertion_sort $i $r_bound
done
for ((size = RUN; size < n; size = 2 * size)); do
    for ((left = 0; left < n; left += 2 * size)); do
        mid=$(min $((left + size - 1)) $((n - 1)))
        right=$(min $((left + 2 * size - 1)) $((n - 1)))
        if ((mid < right)); then
            merge $left $mid $right
        fi
    done
done

echo "Sorted array: ${data[@]}"
