def linear_search(arr, x):
    for i in range(len(arr)):
        if arr[i] == x:
            return i
    return -1

if __name__ == "__main__":
    data = [10, 23, 45, 70, 11, 15]
    target = 70
    result = linear_search(data, target)
    print(f"Element found at index: {result}" if result != -1 else "Element not found")
