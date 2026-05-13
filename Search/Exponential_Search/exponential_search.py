def binary_search(arr, low, high, x):
    while low <= high:
        mid = (low + high) // 2
        if arr[mid] == x: return mid
        if arr[mid] < x: low = mid + 1
        else: high = mid - 1
    return -1

def exponential_search(arr, x):
    if arr[0] == x: return 0
    
    n = len(arr)
    i = 1
    while i < n and arr[i] <= x:
        i = i * 2
        
    return binary_search(arr, i // 2, min(i, n - 1), x)

if __name__ == "__main__":
    data = [2, 3, 4, 10, 40, 50, 70, 80, 100]
    target = 70
    result = exponential_search(data, target)
    print(f"Element found at index: {result}" if result != -1 else "Not found")
