# Bubble Sort Collection

This repository contains implementations of the **Bubble Sort** algorithm in several programming languages and architectures, ranging from high-level languages to assembly.

## Algorithm Description

Bubble Sort is a simple, comparison-based sorting algorithm. It works by repeatedly stepping through the list, comparing adjacent elements, and swapping them if they are in the wrong order. This process repeats until the entire list is sorted.

## Included Implementations

| Language / Architecture | File Extension |
| :--- | :--- |
| C | `.c` |
| C++ | `.cpp`|
| Python | `.py` |
| Java | `.java` |
| Bash | `.sh` |

**NOT YET**

| Language / Architecture | File Extension |
| :--- | :--- |
| ARM Assembly (AArch64) | `.s` |
| x86-64 Assembly | `.asm` |

## Complexity

* **Worst Case Time Complexity:** $O(n^2)$ (occurs when the array is sorted in reverse order)
* **Average Case Time Complexity:** $O(n^2)$
* **Best Case Time Complexity:** $O(n)$ (occurs when the array is already sorted, provided the algorithm is optimized with a flag to detect swaps)
* **Space Complexity:** $O(1)$ (In-place algorithm, as it only requires a single additional memory space for the `temp` variable)
