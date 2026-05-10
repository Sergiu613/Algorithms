# Binary Search Collection

This repository contains implementations of the **Binary Search** algorithm in several programming languages and architectures.

## Algorithm Description

Binary Search is an efficient algorithm for finding an item from a **sorted list** of items. It works by repeatedly dividing in half the portion of the list that could contain the item, until you've narrowed down the possible locations to just one.

[attachment_0](attachment)

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

* **Worst Case Time Complexity:** $O(\log n)$  
  The search space is halved in each step, making it extremely fast even for large datasets.
* **Average Case Time Complexity:** $O(\log n)$  
* **Best Case Time Complexity:** $O(1)$  
  Occurs when the middle element of the initial array is the target value.
* **Space Complexity:** $O(1)$  
  Iterative implementations use constant space. Recursive implementations may use $O(\log n)$ space due to the call stack.
