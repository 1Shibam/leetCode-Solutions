class Solution {
  List<int> getFinalState(List<int> nums, int k, int multiplier) {
    while (k != 0) {
      int minimum = nums[0]; // Initialize the minimum value as the first element
      int index = 0;         // Store the index of the minimum value
      
      for (int i = 1; i < nums.length; i++) {
        if (nums[i] < minimum) { // Find the minimum value and its position
          minimum = nums[i];
          index = i;
        }
      }
      nums[index] *= multiplier; // Multiply the minimum value by the multiplier
      k--;
    }
    return nums;
  }
}

