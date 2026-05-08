#include <iostream>
#include <vector>
#include <algorithm>
#include <random>

bool isSorted(const std::vector<int>& arr) {
    return std::is_sorted(arr.begin(), arr.end());
}

void bogoSort(std::vector<int>& arr) {
    std::random_device rd;
    std::mt19937 g(rd());
    while (!isSorted(arr)) {
        std::shuffle(arr.begin(), arr.end(), g);
    }
}

int main() {
    std::vector<int> data = {3, 1, 4, 2};
    bogoSort(data);
    for (int x : data) std::cout << x << " ";
    return 0;
}
