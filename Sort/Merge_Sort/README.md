# Merge Sort Collection

This repository contains implementations of the **Merge Sort** algorithm in several programming languages and architectures, ranging from high-level languages to assembly.

## Algorithm Description

Merge Sort is an efficient, stable, and comparison-based sorting algorithm that follows the **Divide and Conquer** paradigm. It works by recursively dividing the unsorted list into $n$ sub-lists, each containing one element, and then repeatedly merging those sub-lists to produce new sorted sub-lists until there is only one sorted list remaining.


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
  The algorithm always divides the array into two halves and takes linear time to merge them, regardless of the initial order.
* **Average Case Time Complexity:** $O(n \log n)$  
  On average, the number of operations remains consistent due to the fixed nature of the recursive splitting and merging.
* **Best Case Time Complexity:** $O(n \log n)$  
  Unlike Bubble Sort or Insertion Sort, Merge Sort does not "finish early" if the array is already sorted; it still performs the full divide-and-conquer process.
* **Space Complexity:** $O(n)$  
  The algorithm requires additional auxiliary space to store the temporary subarrays during the merge process.
