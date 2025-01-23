class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> values = {};
    for(int i = 0; i<nums.length; i++){
        int curr = target - nums[i];
        if(values.containsKey(curr)){
            return [values[curr]!, i];
        }
        values[nums[i]] = i;
    }
    return [];
  }
}