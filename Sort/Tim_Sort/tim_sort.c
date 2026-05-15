#include <stdio.h>

const int RUN = 32;

int min(int a, int b) { return (a < b) ? a : b; }

void insertionSort(int arr[], int left, int right) {
    for (int i = left + 1; i <= right; i++) {
        int key = arr[i];
        int j = i - 1;
        while (j >= left && arr[j] > key) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = key;
    }
}

void merge(int arr[], int l, int m, int r) {
    int len1 = m - l + 1, len2 = r - m;
    int left[len1], right[len2];
    for (int i = 0; i < len1; i++) left[i] = arr[l + i];
    for (int i = 0; i < len2; i++) right[i] = arr[m + 1 + i];

    int i = 0, j = 0, k = l;
    while (i < len1 && j < len2) {
        if (left[i] <= right[j]) arr[k++] = left[i++];
        else arr[k++] = right[j++];
    }
    while (i < len1) arr[k++] = left[i++];
    while (j < len2) arr[k++] = right[j++];
}

void timSort(int arr[], int n) {
    for (int i = 0; i < n; i += RUN)
        insertionSort(arr, i, min((i + RUN - 1), (n - 1)));

    for (int size = RUN; size < n; size = 2 * size) {
        for (int left = 0; left < n; left += 2 * size) {
            int mid = min((left + size - 1), (n - 1));
            int right = min((left + 2 * size - 1), (n - 1));
            if (mid < right) merge(arr, left, mid, right);
        }
    }
}

int main() {
    int arr[] = {64, 34, 25, 12, 22, 11, 90, 5, 8, 9, 1, 3, 2, 4, 7, 6, 45, 23, 11, 22};
    int n = sizeof(arr) / sizeof(arr[0]);
    timSort(arr, n);
    for (int i = 0; i < n; i++) printf("%d ", arr[i]);
    return 0;
}
