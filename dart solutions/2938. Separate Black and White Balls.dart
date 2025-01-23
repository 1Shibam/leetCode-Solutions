class Solution {
  int minimumSteps(String s) {
    int totalSwaps = 0;
    int blackCount = 0;
    for(int i =0; i<s.length; i++){
        if(s[i] == '1'){
            blackCount++;
        }
        else{
            totalSwaps += blackCount;

        }
    }
    return totalSwaps;
  }
}