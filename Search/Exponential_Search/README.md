# Exponential Search Collection

This repository contains implementations of the **Exponential Search** algorithm in several programming languages and architectures.

## Algorithm Description

Exponential Search involves two stages. First, it finds a range in which the element is likely to be present by starting with a small range (size 1) and doubling its size at each step. Second, it performs a **Binary Search** within that identified range. This algorithm is particularly useful for searching in unbounded or infinite arrays.

The range discovery process continues as long as the element at the current power of 2 is smaller than the target value.

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

* **Worst Case Time Complexity:** $O(\log i)$, where $i$ is the index of the element being searched.
  If the element is near the beginning, it is faster than a standard Binary Search on the full array.
* **Average Case Time Complexity:** $O(\log i)$
* **Best Case Time Complexity:** $O(1)$
  Occurs when the target is the first element of the array.
* **Space Complexity:** $O(1)$ for iterative Binary Search, or $O(\log i)$ for recursive versions due to the call stack.
