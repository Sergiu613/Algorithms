#include <iostream>
#include <vector>
#include <cmath>
#include <algorithm>

int jumpSearch(const std::vector<int>& arr, int x) {
    int n = arr.size();
    int step = std::sqrt(n);
    int prev = 0;

    while (arr[std::min(step, n) - 1] < x) {
        prev = step;
        step += std::sqrt(n);
        if (prev >= n) return -1;
    }

    while (arr[prev] < x) {
        prev++;
        if (prev == std::min(step, n)) return -1;
    }

    if (arr[prev] == x) return prev;
    return -1;
}

int main() {
    std::vector<int> data = {0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610};
    int x = 55;
    int result = jumpSearch(data, x);
    if (result != -1) std::cout << "Found at index " << result;
    else std::cout << "Not found";
    return 0;
}
