#!/bin/bash

data=(0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610)
target=55
n=${#data[@]}
step=$(echo "scale=0; sqrt($n)" | bc -l)
prev=0

min() {
    if [ $1 -le $2 ]; then echo $1; else echo $2; fi
}

curr_step=$(min $step $n)
while [[ "${data[$((curr_step - 1))]}" -lt "$target" ]]; do
    prev=$step
    step=$(( step + $(echo "scale=0; sqrt($n)" | bc -l) ))
    if [ $prev -ge $n ]; then
        echo "Not found"
        exit
    fi
    curr_step=$(min $step $n)
done

while [[ "${data[$prev]}" -lt "$target" ]]; do
    prev=$(( prev + 1 ))
    curr_step=$(min $step $n)
    if [ $prev -eq $curr_step ]; then
        echo "Not found"
        exit
    fi
done

if [[ "${data[$prev]}" -eq "$target" ]]; then
    echo "Element found at index $prev"
else
    echo "Not found"
fi
