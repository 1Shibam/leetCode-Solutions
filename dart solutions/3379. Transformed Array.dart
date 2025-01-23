class Solution {
  List<int> constructTransformedArray(List<int> nums) {
      int n= nums.length;
      List<int> result = [];
      for(int i=0; i<n; i++){
          int newIndex = (i+nums[i])%n;
          if(newIndex<0){
              newIndex += n;
          }
          result.add(nums[newIndex]);
      }
      return result;
    
  }
}