import 'dart:math';

class Solution {
  int minSubArrayLen(int target, List<int> nums) {
    int left = 0;
    int total = 0;
    int resLen = 1 << 63 - 1;
    for (int right = 0; right < nums.length; right++) {
      total += nums[right];
      while (total >= target) {
        resLen = min(resLen, right - left + 1);
        total = total - nums[left];
        left++;
      }
    }
    if (resLen == 1 << 63 - 1) return 0;
    return resLen;
  }
}
