#include <iostream>
#include <vector>
#include <algorithm>

int fibonacciSearch(const std::vector<int>& arr, int x) {
    int n = arr.size();
    int fib2 = 0;
    int fib1 = 1;
    int fibM = fib2 + fib1;

    while (fibM < n) {
        fib2 = fib1;
        fib1 = fibM;
        fibM = fib2 + fib1;
    }

    int offset = -1;

    while (fibM > 1) {
        int i = std::min(offset + fib2, n - 1);

        if (arr[i] < x) {
            fibM = fib1;
            fib1 = fib2;
            fib2 = fibM - fib1;
            offset = i;
        } else if (arr[i] > x) {
            fibM = fib2;
            fib1 = fib1 - fib2;
            fib2 = fibM - fib1;
        } else return i;
    }

    if (fib1 && arr[offset + 1] == x) return offset + 1;
    return -1;
}

int main() {
    std::vector<int> data = {10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100};
    int x = 85;
    int result = fibonacciSearch(data, x);
    if (result != -1) std::cout << "Found at index " << result;
    else std::cout << "Not found";
    return 0;
}
