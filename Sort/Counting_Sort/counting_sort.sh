#!/bin/bash

data=(4 2 2 8 3 3 1)
n=${#data[@]}

if [ $n -eq 0 ]; then
    echo "Array is empty"
    exit
fi
min=${data[0]}
max=${data[0]}
for num in "${data[@]}"; do
    (( num > max )) && max=$num
    (( num < min )) && min=$num
done

range=$(( max - min + 1 ))
for ((i=0; i<range; i++)); do count[i]=0; done
for num in "${data[@]}"; do
    idx=$(( num - min ))
    count[idx]=$(( count[idx] + 1 ))
done
for ((i=1; i<range; i++)); do
    count[i]=$(( count[i] + count[i-1] ))
done
for ((i=n-1; i>=0; i--)); do
    num=${data[i]}
    idx=$(( num - min ))
    out_idx=$(( count[idx] - 1 ))
    output[out_idx]=$num
    count[idx]=$(( count[idx] - 1 ))
done

echo "Sorted array: ${output[@]}"
