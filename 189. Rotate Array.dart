class Solution {
  void rotate(List<int> nums, int k) {
    //taking the size of list
    int size = nums.length;
    k = k%size;
    
    var rotatedNums = nums.sublist(size-k) + nums.sublist(0, size - k);
    nums.clear();
    nums.addAll(rotatedNums);
  }
}