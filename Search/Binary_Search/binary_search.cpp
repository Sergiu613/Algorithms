#include <iostream>
#include <vector>

int binarySearch(const std::vector<int>& arr, int x) {
    int low = 0, high = arr.size() - 1;
    while (low <= high) {
        int mid = low + (high - low) / 2;
        if (arr[mid] == x) return mid;
        if (arr[mid] < x) low = mid + 1;
        else high = mid - 1;
    }
    return -1;
}

int main() {
    std::vector<int> data = {2, 3, 4, 10, 40};
    int x = 10;
    int result = binarySearch(data, x);
    if (result != -1) std::cout << "Found at index " << result;
    else std::cout << "Not found";
    return 0;
}
