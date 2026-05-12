#!/bin/bash

data=(10 12 13 16 18 19 20 21 22 23 24 33 35 42 47)
target=18
low=0
high=$((${#data[@]} - 1))
found=-1

while [[ $low -le $high && $target -ge ${data[$low]} && $target -le ${data[$high]} ]]; do
    if [[ $low -eq $high ]]; then
        [[ ${data[$low]} -eq $target ]] && found=$low
        break
    fi

    diff_val=$(( ${data[$high]} - ${data[$low]} ))
    diff_idx=$(( high - low ))
    target_offset=$(( target - ${data[$low]} ))
    
    pos_offset=$(echo "($diff_idx * $target_offset) / $diff_val" | bc)
    pos=$(( low + pos_offset ))

    if [[ ${data[$pos]} -eq $target ]]; then
        found=$pos
        break
    fi

    if [[ ${data[$pos]} -lt $target ]]; then
        low=$(( pos + 1 ))
    else
        high=$(( pos - 1 ))
    fi
done

if [[ $found -ne -1 ]]; then
    echo "Element found at index $found"
else
    echo "Not found"
fi
