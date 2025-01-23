class Solution {
  int removeDuplicates(List<int> nums) {
    Map<int, int> map = {};
    nums.forEach((num) {
        map.update(num, (value) => value + 1, ifAbsent: () => 1);
    });
    nums.clear();
    map.forEach((key, value) {
        if (value > 2) {
            nums.addAll(List.filled(2, key));
        } else {
            nums.addAll(List.filled(value, key));
        }
    });
    return nums.length;
  }
}