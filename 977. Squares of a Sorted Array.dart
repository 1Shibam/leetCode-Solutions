class Solution {
  List<int> sortedSquares(List<int> nums) {
    int start = 0;
    int end = nums.length - 1;
    List<int> result = List.filled(nums.length, 0);
    int index = nums.length - 1;
    while(end>=start){
        int leftSquare = nums[start] * nums[start];
        int rightSquare = nums[end] * nums[end];
        if(leftSquare > rightSquare){
            result[index] = leftSquare;
            start++;
        }
        else{
            result[index] = rightSquare;
            end--;
        }
        index--; 
    }
    return result;
  }
}
