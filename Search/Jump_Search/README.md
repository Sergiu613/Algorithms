# Jump Search Collection

This repository contains implementations of the **Jump Search** algorithm in several programming languages and architectures.

## Algorithm Description

Jump Search is an algorithm for **sorted arrays**. The basic idea is to check fewer elements by jumping ahead by fixed steps (blocks) instead of searching element by element. If the target is smaller than the element at the current jump, a linear search is performed backwards (or from the previous jump point) to find the exact location.

The optimal block size to jump is typically $\sqrt{n}$, where $n$ is the total number of elements.

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

* **Worst Case Time Complexity:** $O(\sqrt{n})$  
  The algorithm performs $n/m$ jumps and at most $m-1$ comparisons in the linear search phase. For $m = \sqrt{n}$, this results in $O(\sqrt{n})$.
* **Average Case Time Complexity:** $O(\sqrt{n})$  
* **Best Case Time Complexity:** $O(1)$  
  Occurs when the first element checked is the target.
* **Space Complexity:** $O(1)$  
  It is an iterative process that requires only a constant amount of extra memory for pointers and indices.
