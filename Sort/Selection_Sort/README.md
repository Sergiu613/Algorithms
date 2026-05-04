# Selection Sort Collection

This repository contains implementations of the **Selection Sort** algorithm in several programming languages and architectures, ranging from high-level languages to assembly.

## Algorithm Description

Selection Sort is a simple, in-place comparison-based sorting algorithm. It works by repeatedly finding the **minimum element** from the unsorted part of the list and moving it to the beginning. The algorithm maintains two subarrays: one which is already sorted and one which is remaining to be sorted.

## Included Implementations

| Language / Architecture | File Extension |
| :--- | :--- |
| C | `.c` |
| C++ | `.cpp` |
| Python | `.py` |
| Java | `.java` |
| Bash | `.sh` |
| **NOT YET** | |
| ARM Assembly (AArch64) | `.s` |
| x8086 Assembly | `.asm` |

## Complexity

* **Worst Case Time Complexity:** $O(n^2)$ (occurs when the array is sorted in reverse order)
* **Average Case Time Complexity:** $O(n^2)$
* **Best Case Time Complexity:** $O(n^2)$ (even if the array is sorted, the algorithm still performs all comparisons to find the minimum)
* **Space Complexity:** $O(1)$ (In-place algorithm, as it only requires a constant amount of extra space for indices and swapping)
