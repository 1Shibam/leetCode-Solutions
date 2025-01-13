import 'dart:math';

class Solution {
  int maximumSubarraySum(List<int> nums, int k) {
    if (k > nums.length) {
      return 0; // Subarray size cannot be larger than the array itself
    }

    int maxSum = 0;
    int currentSum = 0;
    Map<int, int> elementCount = {}; // Tracks the frequency of elements in the current window

    for (int i = 0; i < nums.length; i++) {
      // Add the current element to the window
      currentSum += nums[i];
      elementCount[nums[i]] = (elementCount[nums[i]] ?? 0) + 1;

      // If the window size exceeds `k`, shrink it from the left
      if (i >= k) {
        int leftElement = nums[i - k];
        currentSum -= leftElement;
        elementCount[leftElement] = elementCount[leftElement]! - 1;

        if (elementCount[leftElement] == 0) {
          elementCount.remove(leftElement);
        }
      }

      // Check if the window is valid (contains no duplicates)
      if (elementCount.length == k) {
        maxSum = max(maxSum, currentSum);
      }
    }

    return maxSum;
  }
}
