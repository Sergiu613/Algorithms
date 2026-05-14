#include <stdio.h>

int min(int a, int b) { return (a <= b) ? a : b; }

int fibonacciSearch(int arr[], int x, int n) {
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
        int i = min(offset + fib2, n - 1);

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
    int arr[] = {10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100};
    int n = sizeof(arr) / sizeof(arr[0]);
    int x = 85;
    int result = fibonacciSearch(arr, x, n);
    (result == -1) ? printf("Not found") : printf("Found at index %d", result);
    return 0;
}
