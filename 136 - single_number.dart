class Solution {
  int singleNumber(List<int> nums) {
    int result = nums.reduce((a,b) => a^b);
    return result;
    
  }
}