class Solution {
  int countBadPairs(List<int> nums) {
    final size = nums.length;
    Map<int, int> m = {};
    final totalPairs = (size * (size - 1)) ~/ 2;
    for (int i = 0; i < size; i++) {
        final diff = nums[i] - i;
        if (!m.containsKey(diff)) {
            m[diff] = 1;
        } else {
            m[diff] = m[diff]! + 1;
        }
    }
    var c = 0;
    for (final entry in m.entries) {
        if (entry.value > 1) {
            c += ((entry.value * (entry.value - 1)) ~/ 2);
        }
    }
    return totalPairs - c;
  }
}