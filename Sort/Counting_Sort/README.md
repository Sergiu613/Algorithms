# Counting Sort Collection

This repository contains implementations of the **Counting Sort** algorithm in several programming languages and architectures.

## Algorithm Description

Counting Sort is a **non-comparison-based** sorting algorithm. It works by counting the number of objects having distinct key values (kind of hashing), then doing some arithmetic to calculate the position of each object in the output sequence. 

Because it does not compare elements, it can break the $\Omega(n \log n)$ lower bound of comparison-based sorting algorithms and achieve linear time complexity. It is best suited for datasets where the range of potential values ($k$) is not significantly larger than the number of elements ($n$).

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

* **Worst Case Time Complexity:** $O(n + k)$, where $n$ is the number of elements and $k$ is the range of the input (difference between maximum and minimum element).
* **Average Case Time Complexity:** $O(n + k)$
* **Best Case Time Complexity:** $O(n + k)$
* **Space Complexity:** $O(n + k)$  
  It is not an in-place algorithm as it requires auxiliary arrays for counting frequencies and storing the sorted output.
