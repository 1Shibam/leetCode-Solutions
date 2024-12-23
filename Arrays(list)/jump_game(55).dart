import 'dart:math';

class Solution {
  bool canJump(List<int> nums) {
    int farthest = 0;
    for (int i = 0; i < nums.length; i++) {
      if (i > farthest) return false; // If we can't reach this position, return false.
      farthest = max(farthest, i + nums[i]); // Update the farthest position.
    }
    return true; // If we exit the loop, we can reach the end.
  }
}
