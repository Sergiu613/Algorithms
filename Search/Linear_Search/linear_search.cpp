#include <iostream>
#include <vector>

int linearSearch(const std::vector<int>& arr, int x) {
    for (int i = 0; i < arr.size(); i++) {
        if (arr[i] == x) return i;
    }
    return -1;
}

int main() {
    std::vector<int> data = {10, 23, 45, 70, 11, 15};
    int x = 70;
    int result = linearSearch(data, x);
    if (result != -1) std::cout << "Element found at index " << result;
    else std::cout << "Element not found";
    return 0;
}
