class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    Set<int> seen = {};
    for(int i = 0; i < nums.length; i++){
        if(seen.contains(nums[i])) return true;
        seen.add(nums[i]);
        if(seen.length>k) seen.remove(nums[i-k]);
    }
        
    return false;
    
  }
}