import java.util.Arrays;

public class CountingSort {
    public static void sort(int[] arr) {
        if (arr.length == 0) return;

        int max = arr[0], min = arr[0];
        for (int num : arr) {
            if (num > max) max = num;
            if (num < min) min = num;
        }

        int range = max - min + 1;
        int[] count = new int[range];
        int[] output = new int[arr.length];

        for (int num : arr) count[num - min]++;
        for (int i = 1; i < range; i++) count[i] += count[i - 1];

        for (int i = arr.length - 1; i >= 0; i--) {
            output[count[arr[i] - min] - 1] = arr[i];
            count[arr[i] - min]--;
        }

        System.arraycopy(output, 0, arr, 0, arr.length);
    }

    public static void main(String[] args) {
        int[] arr = {4, 2, 2, 8, 3, 3, 1};
        sort(arr);
        System.out.println("Sorted array: " + Arrays.toString(arr));
    }
}
