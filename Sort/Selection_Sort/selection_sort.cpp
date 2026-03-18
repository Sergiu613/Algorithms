#include <iostream>
#include <vector>
#include <algorithm>

void selectionSort(std::vector<int>& vec) {
    size_t n = vec.size();
    for (size_t i = 0; i < n - 1; i++) {
        size_t min_idx = i;
        for (size_t j = i + 1; j < n; j++) {
            if (vec[j] < vec[min_idx]) {
                min_idx = j;
            }
        }
        if (min_idx != i) {
            std::swap(vec[i], vec[min_idx]);
        }
    }
}
