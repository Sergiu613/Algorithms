import random

def is_sorted(arr):
    return all(arr[i] <= arr[i+1] for i in range(len(arr)-1))

def bogo_sort(arr):
    while not is_sorted(arr):
        random.shuffle(arr)

if __name__ == "__main__":
    data = [3, 1, 4, 2] # Atenție: n > 8 poate dura "o eternitate"
    bogo_sort(data)
    print(f"Sorted array: {data}")
