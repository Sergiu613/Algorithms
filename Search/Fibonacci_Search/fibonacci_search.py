def fibonacci_search(arr, x):
    n = len(arr)
    fib2 = 0  # (m-2)-th Fibonacci number
    fib1 = 1  # (m-1)-th Fibonacci number
    fibM = fib2 + fib1  # m-th Fibonacci number

    while fibM < n:
        fib2 = fib1
        fib1 = fibM
        fibM = fib2 + fib1

    offset = -1

    while fibM > 1:
        i = min(offset + fib2, n - 1)

        if arr[i] < x:
            fibM = fib1
            fib1 = fib2
            fib2 = fibM - fib1
            offset = i
        elif arr[i] > x:
            fibM = fib2
            fib1 = fib1 - fib2
            fib2 = fibM - fib1
        else:
            return i

    if fib1 and arr[offset + 1] == x:
        return offset + 1

    return -1

if __name__ == "__main__":
    data = [10, 22, 35, 40, 45, 50, 80, 82, 85, 90, 100]
    target = 85
    result = fibonacci_search(data, target)
    print(f"Element found at index: {result}" if result != -1 else "Not found")
