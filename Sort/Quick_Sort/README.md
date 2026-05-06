# Quick Sort Collection

This repository contains implementations of the **Quick Sort** algorithm in several programming languages and architectures, ranging from high-level languages to assembly.

## Algorithm Description

Quick Sort is a highly efficient, comparison-based sorting algorithm that uses a **Divide and Conquer** strategy. It works by selecting a 'pivot' element from the array and partitioning the other elements into two sub-arrays, according to whether they are less than or greater than the pivot. The sub-arrays are then sorted recursively.

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

* **Worst Case Time Complexity:** $O(n^2)$  
  Occurs when the pivot is consistently the smallest or largest element (e.g., sorting an already sorted array with a poor pivot selection).
* **Average Case Time Complexity:** $O(n \log n)$  
  This is the expected performance for most real-world data.
* **Best Case Time Complexity:** $O(n \log n)$  
  Occurs when the pivot partition always divides the array into two nearly equal halves.
* **Space Complexity:** $O(\log n)$  
  Due to the stack space used by recursion. It is considered an in-place sorting algorithm as it requires minimal extra memory.
