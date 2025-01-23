class Solution {
  List<int> plusOne(List<int> digits) {
    int n = digits.length;

    for(int i = n -1 ; i >= 0 ; i--){
        digits[i]++;

        if(digits[i]< 10){
            return digits;
        }
    digits[i] = 0;
    }
        digits.insert(0,1);
        return digits;
    
  }
}