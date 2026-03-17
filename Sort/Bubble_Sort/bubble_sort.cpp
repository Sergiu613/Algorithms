#include <iostream>
#include <vector>
#include <algorithm>

void bubbleSort(std::vector<int>& v) {
    size_t n = v.size();
    for (size_t i = 0; i < n - 1; i++) {
        for (size_t j = 0; j < n - i - 1; j++) {
            if (v[j] > v[j + 1]) {
                std::swap(v[j], v[j + 1]);
            }
        }
    }
}
