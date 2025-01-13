class Solution {
  bool containsDuplicate(List<int> nums) {
    var myList = nums.toSet().toList();
    if(myList.length<nums.length) return true;
    else return false;
    
  }
}