class Solution {
  bool search(List<int> nums, int target) {
    //solution one line

    // return nums.indexOf(target) != -1;

    //another one line solution
    // return nums.contains(target);

    // i like to suffer more ahh solution
    int left = 0;
    int right = nums.length -1;
    while(left <= right ){
        if(nums[left] == target){
            return true;
        }
        else if(nums[right] == target){
            return true;
        }
        left++;
        right--;
    }
    return false;
    
  }
}