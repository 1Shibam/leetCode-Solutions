class Solution {
  int majorityElement(List<int> nums) {
    Map<int,int> majorCount={};
    for(int i in nums){
        if(majorCount.containsKey(i)){
            majorCount[i] = majorCount[i]! + 1;
        }
        else {
            majorCount[i] = 1;
        }
        
    }
    int? major;
        int len = nums.length ~/ 2;
        majorCount.forEach((key,value){
            if(value>len){
                major = key;
            }
        });
    return major!;
    
  }
}