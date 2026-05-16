# Shell Sort Collection

This repository contains implementations of the **Shell Sort** algorithm in several programming languages and architectures.

## Algorithm Description

Shell Sort is an in-place comparison sort that can be seen as an optimization of **Insertion Sort**. Instead of comparing adjacent elements, Shell Sort compares elements separated by a distance (gap) that decreases over time. By sorting elements far apart first, it can move misplaced items to their correct positions much faster than a standard insertion sort.

The algorithm typically starts with a large gap (e.g., $n/2$) and halves it in each iteration until the gap becomes 1, at which point it performs a final, highly optimized Insertion Sort.

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

The complexity of Shell Sort depends heavily on the **gap sequence** used. Below are the metrics for the standard Shell's sequence ($n/2, n/4, \dots$):

* **Worst Case Time Complexity:** $O(n^2)$  
  Can be improved to $O(n^{3/2})$ or $O(n \log^2 n)$ by using better gap sequences like Sedgewick or Pratt.
* **Average Case Time Complexity:** $O(n^{7/6})$ or $O(n^{5/4})$ (depending on the gap sequence).
* **Best Case Time Complexity:** $O(n \log n)$  
  Occurs when the array is already sorted.
* **Space Complexity:** $O(1)$  
  It is an in-place sorting algorithm requiring only a constant amount of extra memory.
