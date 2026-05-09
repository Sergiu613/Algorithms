# Linear Search Collection

This repository contains implementations of the **Linear Search** algorithm in several programming languages and architectures.

## Algorithm Description

Linear Search (or Sequential Search) is the simplest search algorithm. It works by starting at the beginning of a list and checking every element one by one until a match is found or the end of the list is reached. It is the only way to search for an element in an unsorted list without prior knowledge of its structure.

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

* **Worst Case Time Complexity:** $O(n)$  
  Occurs when the element is at the very end of the list or not present at all, requiring a check of every single item.
* **Average Case Time Complexity:** $O(n)$  
  On average, the algorithm will find the element after checking half of the list.
* **Best Case Time Complexity:** $O(1)$  
  Occurs when the element being searched for is at the first position in the list.
* **Space Complexity:** $O(1)$  
  Requires no extra storage; it only uses a constant amount of memory for indices and comparisons.
