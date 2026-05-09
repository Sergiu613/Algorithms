#include <stdio.h>

int linearSearch(int arr[], int n, int x) {
    for (int i = 0; i < n; i++) {
        if (arr[i] == x) return i;
    }
    return -1;
}

int main() {
    int arr[] = {10, 23, 45, 70, 11, 15};
    int n = sizeof(arr) / sizeof(arr[0]);
    int x = 70;
    int result = linearSearch(arr, n, x);
    (result == -1) ? printf("Element not found") : printf("Element found at index %d", result);
    return 0;
}
