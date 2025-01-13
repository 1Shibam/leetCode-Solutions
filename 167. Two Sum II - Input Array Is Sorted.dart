class Solution {
  List<int> twoSum(List<int> numbers, int target) { 
    int starting = 0;
    int end = numbers.length - 1;
    while(numbers[starting] + numbers[end] != target){
        if(numbers[starting] + numbers[end] > target) end--;
        else starting++;
    }
    return [starting + 1, end + 1];
    
  }
}