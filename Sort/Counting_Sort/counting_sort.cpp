#include <iostream>
#include <vector>
#include <algorithm>

void countingSort(std::vector<int>& arr) {
    if (arr.empty()) return;

    auto [min_it, max_it] = std::minmax_element(arr.begin(), arr.end());
    int min = *min_it;
    int max = *max_it;
    int range = max - min + 1;

    std::vector<int> count(range, 0);
    std::vector<int> output(arr.size());

    for (int num : arr) count[num - min]++;
    for (int i = 1; i < range; i++) count[i] += count[i - 1];

    for (int i = arr.size() - 1; i >= 0; i--) {
        output[count[arr[i] - min] - 1] = arr[i];
        count[arr[i] - min]--;
    }

    arr = output;
}

int main() {
    std::vector<int> data = {4, 2, 2, 8, 3, 3, 1};
    countingSort(data);
    for (int x : data) std::cout << x << " ";
    return 0;
}
