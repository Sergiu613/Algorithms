# Interpolation Search Collection

This repository contains implementations of the **Interpolation Search** algorithm in several programming languages and architectures.

## Algorithm Description

Interpolation Search is an algorithm for searching a key in a **sorted array** that has values **uniformly distributed**. While Binary Search always checks the middle element, Interpolation Search may go to different locations according to the value of the key being searched. For example, if the value of the key is closer to the last element, interpolation search is likely to start search toward the end side.

The position is calculated using the formula:
$$pos = low + \left[ \frac{(x - arr[low]) \cdot (high - low)}{arr[high] - arr[low]} \right]$$

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
  Occurs when the data is not uniformly distributed (e.g., exponential distribution).
* **Average Case Time Complexity:** $O(\log(\log n))$  
  Extremely efficient for large, uniformly distributed datasets.
* **Best Case Time Complexity:** $O(1)$  
  Occurs when the element is found at the calculated position on the first attempt.
* **Space Complexity:** $O(1)$  
  Iterative implementation requires constant extra space.
