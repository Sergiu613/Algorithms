
# BogoSort Collection

This repository contains implementations of the **BogoSort** algorithm in several programming languages. This is a highly inefficient algorithm, used primarily for educational purposes or as a computer science joke.

## Algorithm Description

BogoSort is based on the **generate and test** paradigm. The algorithm repeatedly shuffles the elements of the list in a random order and checks if the list is sorted. It continues this process until, by pure chance, the list ends up in a sorted state.

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

* **Worst Case Time Complexity:** $O(\infty)$  
  There is no guarantee that the algorithm will ever finish, as it relies on random shuffling.
* **Average Case Time Complexity:** $O(n \cdot n!)$  
  For a list of $n$ elements, there are $n!$ possible permutations.
* **Best Case Time Complexity:** $O(n)$  
  Occurs if the list is already sorted (it only takes one pass to check).
* **Space Complexity:** $O(1)$  
  The sorting is done in-place, though the random number generator may use minimal auxiliary space.
