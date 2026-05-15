# TimSort Collection

This repository contains implementations of the **TimSort** algorithm in several programming languages and architectures.

## Algorithm Description

TimSort is a hybrid, stable sorting algorithm derived from **Merge Sort** and **Insertion Sort**, designed to perform optimally on many kinds of real-world data. It was implemented by Tim Peters in 2002 for use in the Python programming language.

The algorithm works by finding subsequences of the data that are already sorted (called **runs**) and splitting the remaining data into smaller chunks (typically of size 32 or 64) to sort them using Insertion Sort. Finally, it merges these sorted runs using an optimized Merge Sort strategy.

## Included Implementations

| Language / Architecture | File Extension |
| :--- | :--- |
| C | `.c` |
| C++ | `.cpp` |
| Python | `.py` |
| Java | `.java` |
| Bash | `.sh` |

**NOT YET**

| Language / Architecture | File Extension |
| :--- | :--- |
| ARM Assembly (AArch64) | `.s` |
| x8086 Assembly | `.asm` |


## Complexity

* **Worst Case Time Complexity:** $O(n \log n)$  
  Maintains the excellent worst-case performance of Merge Sort.
* **Average Case Time Complexity:** $O(n \log n)$  
* **Best Case Time Complexity:** $O(n)$  
  Occurs when the data is already sorted or nearly sorted, as it can identify the entire array as a single run.
* **Space Complexity:** $O(n)$  
  Requires auxiliary space to merge the runs, though it is highly optimized compared to a standard Merge Sort.
