def binary_search(arr, x):
    low = 0
    high = len(arr) - 1
    while low <= high:
        mid = (high + low) // 2
        if arr[mid] == x:
            return mid
        elif arr[mid] < x:
            low = mid + 1
        else:
            high = mid - 1
    return -1

if __name__ == "__main__":
    data = [2, 3, 4, 10, 40] # Trebuie să fie sortat
    target = 10
    result = binary_search(data, target)
    print(f"Element found at index: {result}" if result != -1 else "Not found")
