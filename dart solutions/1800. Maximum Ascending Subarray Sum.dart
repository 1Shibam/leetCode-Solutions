class Solution {
  int maxAscendingSum(List<int> nums) {
    int maxSum = nums[0];
    List<int> sums = [];
    for(int i = 1; i<nums.length; i++){
      
      if(nums[i]>nums[i-1]){
        maxSum += nums[i];
        
      }
      else{
        sums.add(maxSum);
        maxSum = nums[i];
      }
    }
    sums.add(maxSum);  
    if(sums.isNotEmpty) return sums.reduce((a,b) => a>b ? a :  b);
    return 0;
    
  }
}