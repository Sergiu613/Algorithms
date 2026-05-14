#!/bin/bash

data=(10 22 35 40 45 50 80 82 85 90 100)
target=85
n=${#data[@]}

fib2=0
fib1=1
fibM=$((fib2 + fib1))

while [ $fibM -lt $n ]; do
    fib2=$fib1
    fib1=$fibM
    fibM=$((fib2 + fib1))
done

offset=-1

while [ $fibM -gt 1 ]; do
    # Calculăm indexul
    temp=$((offset + fib2))
    if [ $temp -lt $((n - 1)) ]; then
        i=$temp
    else
        i=$((n - 1))
    fi

    if [ "${data[$i]}" -lt "$target" ]; then
        fibM=$fib1
        fib1=$fib2
        fib2=$((fibM - fib1))
        offset=$i
    elif [ "${data[$i]}" -gt "$target" ]; then
        fibM=$fib2
        fib1=$((fib1 - fib2))
        fib2=$((fibM - fib1))
    else
        echo "Element found at index $i"
        exit
    fi
done

if [ $fib1 -eq 1 ] && [ "${data[$((offset + 1))]}" -eq "$target" ]; then
    echo "Element found at index $((offset + 1))"
else
    echo "Not found"
fi
