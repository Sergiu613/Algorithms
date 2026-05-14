# Fibonacci Search Collection

This repository contains implementations of the **Fibonacci Search** algorithm in several programming languages and architectures.

## Algorithm Description

Fibonacci Search is a comparison-based technique that uses Fibonacci numbers to search an element in a **sorted array**. Similar to Binary Search, it narrows down the possible location of the target element, but instead of dividing the array into two equal halves, it divides the array into unequal parts according to Fibonacci numbers.

The main advantage over Binary Search is that Fibonacci Search only uses addition and subtraction to calculate indices, avoiding division or bit shifting, which can be beneficial on certain older hardware architectures.

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
  Similar to Binary Search, but the constant factor is slightly larger.
* **Average Case Time Complexity:** $O(\log n)$
* **Best Case Time Complexity:** $O(1)$  
  Occurs when the target element is found at one of the first calculated indices.
* **Space Complexity:** $O(1)$  
  The algorithm is iterative and requires only a constant amount of extra memory to store Fibonacci numbers and pointers.
