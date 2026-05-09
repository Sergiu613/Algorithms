#!/bin/bash

data=(10 23 45 70 11 15)
target=70
found=-1

for i in "${!data[@]}"; do
    if [[ "${data[$i]}" -eq "$target" ]]; then
        found=$i
        break
    fi
done

if [[ $found -ne -1 ]]; then
    echo "Element found at index $found"
else
    echo "Element not found"
fi
