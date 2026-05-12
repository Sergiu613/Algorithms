public class InterpolationSearch {
    public static int search(int arr[], int x) {
        int low = 0, high = arr.length - 1;

        while (low <= high && x >= arr[low] && x <= arr[high]) {
            if (low == high) {
                return (arr[low] == x) ? low : -1;
            }

            int pos = low + (int)(((double)(high - low) / (arr[high] - arr[low])) * (x - arr[low]));

            if (arr[pos] == x) return pos;
            if (arr[pos] < x) low = pos + 1;
            else high = pos - 1;
        }
        return -1;
    }

    public static void main(String[] args) {
        int arr[] = {10, 12, 13, 16, 18, 19, 20, 21, 22, 23, 24, 33, 35, 42, 47};
        int x = 18;
        int result = search(arr, x);
        System.out.println(result != -1 ? "Found at index: " + result : "Not found");
    }
}
