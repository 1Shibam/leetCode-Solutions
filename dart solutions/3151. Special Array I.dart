class Solution {
  bool isArraySpecial(List<int> nums) {
    int first = 0;
    int second = 1;
    int n = nums.length;
    bool result = true;
    if(n == 1) return true;
    else{
      while(second < n){
        if(nums[first] % 2 == 0 && nums[second] % 2 == 1){
          result = true;
        }
        else if(nums[first] % 2 == 1 && nums[second] % 2 == 0){
          result = true;
        }
        else return false;

        first++;
        second++;
      }
    }
    return result;
    
  }
}