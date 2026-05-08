#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>

bool isSorted(int arr[], int n) {
    for (int i = 0; i < n - 1; i++)
        if (arr[i] > arr[i + 1]) return false;
    return true;
}

void shuffle(int arr[], int n) {
    for (int i = 0; i < n; i++) {
        int temp = arr[i];
        int randomIndex = rand() % n;
        arr[i] = arr[randomIndex];
        arr[randomIndex] = temp;
    }
}

void bogoSort(int arr[], int n) {
    while (!isSorted(arr, n)) {
        shuffle(arr, n);
    }
}

int main() {
    srand(time(NULL));
    int arr[] = {3, 1, 4, 2};
    int n = sizeof(arr) / sizeof(arr[0]);
    bogoSort(arr, n);
    for (int i = 0; i < n; i++) printf("%d ", arr[i]);
    return 0;
}
