#include <iostream>
#include <vector>

int interpolationSearch(const std::vector<int>& arr, int x) {
    int low = 0, high = arr.size() - 1;

    while (low <= high && x >= arr[low] && x <= arr[high]) {
        if (low == high) {
            return (arr[low] == x) ? low : -1;
        }

        int pos = low + ((double)(high - low) / (arr[high] - arr[low]) * (x - arr[low]));

        if (arr[pos] == x) return pos;
        if (arr[pos] < x) low = pos + 1;
        else high = pos - 1;
    }
    return -1;
}

int main() {
    std::vector<int> data = {10, 12, 13, 16, 18, 19, 20, 21, 22, 23, 24, 33, 35, 42, 47};
    int x = 18;
    int result = interpolationSearch(data, x);
    if (result != -1) std::cout << "Found at index " << result;
    else std::cout << "Not found";
    return 0;
}
