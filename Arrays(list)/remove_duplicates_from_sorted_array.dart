class Solution {
  int removeDuplicates(List<int> nums) {
    int count = 0;
    for(int i = 1; i < nums.length; i++) {
        if(nums[i - 1] != nums[i]) {
            count++;
            nums[count] = nums[i];
        }
    }
    return count + 1;
  }
}