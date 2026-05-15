RUN = 32

def insertion_sort(arr, left, right):
    for i in range(left + 1, right + 1):
        key = arr[i]
        j = i - 1
        while j >= left and arr[j] > key:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key

def merge(arr, l, m, r):
    len1, len2 = m - l + 1, r - m
    left, right = [], []
    for i in range(0, len1): left.append(arr[l + i])
    for i in range(0, len2): right.append(arr[m + 1 + i])

    i, j, k = 0, 0, l
    while i < len1 and j < len2:
        if left[i] <= right[j]:
            arr[k] = left[i]
            i += 1
        else:
            arr[k] = right[j]
            j += 1
        k += 1

    while i < len1:
        arr[k] = left[i]
        k += 1
        i += 1
    while j < len2:
        arr[k] = right[j]
        k += 1
        j += 1

def tim_sort(arr):
    n = len(arr)
    for i in range(0, n, RUN):
        insertion_sort(arr, i, min((i + RUN - 1), (n - 1)))

    size = RUN
    while size < n:
        for left in range(0, n, 2 * size):
            mid = min((left + size - 1), (n - 1))
            right = min((left + 2 * size - 1), (n - 1))
            if mid < right:
                merge(arr, left, mid, right)
        size = 2 * size

if __name__ == "__main__":
    data = [64, 34, 25, 12, 22, 11, 90, 5, 8, 9, 1, 3, 2, 4, 7, 6, 45, 23, 11, 22]
    tim_sort(data)
    print(f"Sorted array: {data}")
