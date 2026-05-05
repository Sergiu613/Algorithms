#!/bin/bash

merge() {
    local left=($1)
    local right=($2)
    local res=()
    local i=0 j=0

    while ((i < ${#left[@]} && j < ${#right[@]})); do
        if (( ${left[i]} <= ${right[j]} )); then
            res+=(${left[i]})
            ((i++))
        else
            res+=(${right[j]})
            ((j++))
        fi
    done
    res+=(${left[@]:i})
    res+=(${right[@]:j})
    echo ${res[@]}
}

merge_sort() {
    local arr=($@)
    local n=${#arr[@]}
    if (( n <= 1 )); then
        echo ${arr[@]}
        return
    fi

    local mid=$((n / 2))
    local left=$(merge_sort ${arr[@]:0:mid})
    local right=$(merge_sort ${arr[@]:mid})

    merge "$left" "$right"
}

data=(64 34 25 12 22 11 90)
sorted=$(merge_sort ${data[@]})
echo "Sorted array: $sorted"
