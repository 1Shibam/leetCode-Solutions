class Solution {
  int missingNumber(List<int> nums) {
    //not well optimized 
    // List<int> myList = [];
    // for(int i =0; i<=nums.length; i++){
    //     myList.add(i);
    // }
    // List<int> missingElement = myList.where((element) => !nums.contains(element)).toList();
    // return missingElement.first;
    int n = nums.length;
    int expectedSum = n*(n+1)~/2;
    int actualSum = nums.reduce((a,b) => (a+b));
    int result = expectedSum-actualSum;
    return result;

  }
}