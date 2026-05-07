# Heap Sort Collection

This repository contains implementations of the **Heap Sort** algorithm in several programming languages and architectures, ranging from high-level languages to assembly.

## Algorithm Description

Heap Sort is a comparison-based sorting algorithm that uses a **Binary Heap** data structure. It works by first transforming the list into a Max-Heap, where the largest element is at the root. The algorithm then repeatedly swaps the root with the last element of the heap, reduces the heap size, and "heapifies" the root to maintain the heap property.

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
  The time to build the heap is $O(n)$, and performing $n$ "heapify" operations takes $O(n \log n)$.
* **Average Case Time Complexity:** $O(n \log n)$  
  Consistent performance regardless of the initial distribution of data.
* **Best Case Time Complexity:** $O(n \log n)$  
  Unlike some other algorithms, Heap Sort does not have a linear best-case scenario.
* **Space Complexity:** $O(1)$  
  It is an in-place algorithm as it requires only a constant amount of additional memory.
