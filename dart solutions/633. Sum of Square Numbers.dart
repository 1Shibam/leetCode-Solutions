import 'dart:math';

class Solution {
  bool judgeSquareSum(int c) {
    
    int left = 0;
    int right = sqrt(c).toInt();;
    while(left<=right){
        int square = left*left + right*right;
        if(square == c) return true;
        else if(square<c) left++;
        else right--;
    }
    return false;
  }
}