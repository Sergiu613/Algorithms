public class LinearSearch {
    public static int search(int arr[], int x) {
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == x) return i;
        }
        return -1;
    }

    public static void main(String args[]) {
        int arr[] = {10, 23, 45, 70, 11, 15};
        int x = 70;
        int result = search(arr, x);
        System.out.println(result != -1 ? "Found at index: " + result : "Not found");
    }
}
