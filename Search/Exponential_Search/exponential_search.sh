#!/bin/bash

data=(2 3 4 10 40 50 70 80 100)
target=70
n=${#data[@]}

binary_search() {
    local low=$1
    local high=$2
    while [ $low -le $high ]; do
        mid=$(( low + (high - low) / 2 ))
        if [[ "${data[$mid]}" -eq "$target" ]]; then
            echo $mid
            return
        fi
        if [[ "${data[$mid]}" -lt "$target" ]]; then
            low=$(( mid + 1 ))
        else
            high=$(( mid - 1 ))
        fi
    done
    echo "-1"
}

if [[ "${data[0]}" -eq "$target" ]]; then
    echo "Found at index 0"
    exit
fi

i=1
while [[ $i -lt $n && ${data[$i]} -le $target ]]; do
    i=$(( i * 2 ))
done

# Set high bound
high=$(( i < n - 1 ? i : n - 1 ))
result=$(binary_search $((i / 2)) $high)

if [[ "$result" != "-1" ]]; then
    echo "Element found at index $result"
else
    echo "Element not found"
fi
