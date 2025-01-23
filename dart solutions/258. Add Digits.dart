class Solution {
  int addDigits(int num) {
    
    while(num>9){
        int currNum = num;
        List<int> sumL = [];
        while(currNum > 0){
            int rem = currNum%10;
            sumL.add(rem);
            currNum ~/= 10;
        }
        num = sumL.reduce((a,b) => a+b);
    }
    return num;
  }
 
}