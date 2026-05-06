#!/bin/bash

# Data array
data=(64 34 25 12 22 11 90)

quick_sort() {
    local left=$1
    local right=$2
    if (( left < right )); then
        local pivot=${data[$right]}
        local i=$((left - 1))
        
        for ((j = left; j < right; j++)); do
            if (( data[j] <= pivot )); then
                ((i++))
                temp=${data[$i]}
                data[$i]=${data[$j]}
                data[$j]=$temp
            fi
        done
        
        ((i++))
        temp=${data[$i]}
        data[$i]=${data[$right]}
        data[$right]=$temp
        
        local pi=$i
        quick_sort $left $((pi - 1))
        quick_sort $((pi + 1)) $right
    fi
}

quick_sort 0 $((${#data[@]} - 1))
echo "Sorted array: ${data[@]}"
