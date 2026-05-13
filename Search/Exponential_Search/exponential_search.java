import java.util.Arrays;

public class ExponentialSearch {
    static int search(int arr[], int x) {
        if (arr[0] == x) return 0;
        int n = arr.length;
        int i = 1;
        while (i < n && arr[i] <= x) i = i * 2;
        return Arrays.binarySearch(arr, i / 2, Math.min(i, n), x);
    }

    public static void main(String args[]) {
        int arr[] = {2, 3, 4, 10, 40, 50, 70, 80, 100};
        int x = 70;
        int result = search(arr, x);
        System.out.println(result >= 0 ? "Found at index: " + result : "Not found");
    }
}
