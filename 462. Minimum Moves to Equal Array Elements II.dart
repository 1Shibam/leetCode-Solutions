class Solution {
  int minMoves2(List<int> nums) {
    nums.sort();
    int moves = 0;
    if(nums.length % 2 == 1){
        int middle = nums.length ~/ 2;
        for(int i = 0; i<nums.length; i++){
            moves += (nums[middle] - nums[i]).abs();
        }
    }
    else{
        int middle = (nums.length ~/ 2) - 1;
        for(int i = 0; i<nums.length; i++){
            moves += (nums[middle] - nums[i]).abs();
        }
    }
    return moves;
  }
}