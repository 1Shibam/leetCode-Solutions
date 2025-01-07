class Solution {
  List<int> singleNumber(List<int> nums) {
    int xor = nums.reduce((a, b) => a ^ b);

    // Find rightmost set bit
    int rightmostSetBit = xor & -xor;

    int x = 0, y = 0;
    for (int num in nums) {
      if ((num & rightmostSetBit) == 0) {
        x ^= num;
      } else {
        y ^= num;
      }
    }
    return [x, y];
  }
}
