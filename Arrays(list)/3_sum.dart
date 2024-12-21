class Solution {
  List<List<int>> threeSum(List<int> nums) {
    nums.sort();
    List<List<int>> resultSumList = [];
    for(int i = 0; i<nums.length-2; i++){
        int left = i+1;
        int right = nums.length - 1;
        if( i>0 && nums[i] == nums[i-1]) continue;
        while(left<right){
            int currentSum = nums[i] + nums[left] + nums[right];
            if(currentSum>0) right--;
            else if(currentSum<0) left++;
            else{
                resultSumList.add([nums[i], nums[left], nums[right]]);
                 left++;
            right--;
            //duplicates from left
        while(left<right && nums[left] == nums[left-1]) left++;
        //duplicates from right
        while(left<right && nums[right] == nums[right+1]) right--;
            }
           
            
        
        }
        
    }
    return resultSumList;
    
  }
}