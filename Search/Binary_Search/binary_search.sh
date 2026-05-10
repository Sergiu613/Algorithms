#!/bin/bash

data=(2 3 4 10 40)
target=10
low=0
high=$((${#data[@]} - 1))
found=-1

while [ $low -le $high ]; do
    mid=$(( low + (high - low) / 2 ))
    if [[ "${data[$mid]}" -eq "$target" ]]; then
        found=$mid
        break
    fi
    if [[ "${data[$mid]}" -lt "$target" ]]; then
        low=$(( mid + 1 ))
    else
        high=$(( mid - 1 ))
    fi
done

if [[ $found -ne -1 ]]; then
    echo "Element found at index $found"
else
    echo "Element not found"
fi
