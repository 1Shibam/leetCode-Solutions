import 'dart:math';

class Solution {
  int pickGifts(List<int> gifts, int k) {
    int check = 0;
    while(check < k){
        int curMax = 0;
        for(int i = 0; i< gifts.length; i++){
            curMax = max(curMax, gifts[i]);
        }
        int indexOfCurMax = gifts.indexOf(curMax);
        gifts[indexOfCurMax] = pow(gifts[indexOfCurMax], 0.5).toInt();
        check++;
    }
    int result = gifts.reduce((a,b) => a+b);
    return result;
    
  }
}