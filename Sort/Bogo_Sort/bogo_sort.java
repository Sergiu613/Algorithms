import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class BogoSort {
    boolean isSorted(List<Integer> arr) {
        for (int i = 0; i < arr.size() - 1; i++) {
            if (arr.get(i) > arr.get(i + 1)) return false;
        }
        return true;
    }

    void sort(List<Integer> arr) {
        while (!isSorted(arr)) {
            Collections.shuffle(arr);
        }
    }

    public static void main(String args[]) {
        List<Integer> data = new ArrayList<>(List.of(3, 1, 4, 2));
        new BogoSort().sort(data);
        System.out.println("Sorted: " + data);
    }
}
