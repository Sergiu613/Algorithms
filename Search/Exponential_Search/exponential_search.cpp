#include <iostream>
#include <vector>
#include <algorithm>

int binarySearch(const std::vector<int>& arr, int l, int r, int x) {
    while (l <= r) {
        int m = l + (r - l) / 2;
        if (arr[m] == x) return m;
        if (arr[m] < x) l = m + 1;
        else r = m - 1;
    }
    return -1;
}

int exponentialSearch(const std::vector<int>& arr, int x) {
    if (arr[0] == x) return 0;
    int n = arr.size();
    int i = 1;
    while (i < n && arr[i] <= x) i = i * 2;
    return binarySearch(arr, i / 2, std::min(i, n - 1), x);
}

int main() {
    std::vector<int> data = {2, 3, 4, 10, 40, 50, 70, 80, 100};
    int x = 70;
    int result = exponentialSearch(data, x);
    if (result != -1) std::cout << "Found at index " << result;
    else std::cout << "Not found";
    return 0;
}
