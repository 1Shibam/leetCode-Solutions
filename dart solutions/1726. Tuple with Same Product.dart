class Solution {
  int tupleSameProduct(List<int> nums) {
    int n = nums.length;
    Map<int, int> freq = {};

    for (int i = 0; i < n - 1; i++) {
      for (int j = i + 1; j < n; j++) {
        int product = nums[i] * nums[j];
        freq[product] = (freq[product] ?? 0) + 1;
      }
    }

    int sum = 0;
    freq.forEach((key, value) {
      if (value > 1) sum += (value * (value - 1)) ~/ 2;
    });

    return sum * 8;
  }
}