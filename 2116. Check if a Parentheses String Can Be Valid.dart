class Solution {
  bool canBeValid(String s, String locked) {
    int n = s.length;
    //valid parenthesis must have to be in pairs
    //so length can not be odd
    if(n % 2 == 1) return false;
    int lockPar = 0;
    int flexPar = 0;

    //forward checking
    for(int i = 0; i<n; i++){
        if(locked[i] == '1'){
            lockPar += s[i] == '(' ? 1 : -1; 
        }
        else{
            flexPar++;
        }
        if (lockPar + flexPar < 0) return false; //can not be a valid parenthesis
    }

    //backward checking
    lockPar = 0;
    flexPar = 0;
    for(int i = n-1 ; i>=0; i--){
        if(locked[i] == '1'){
            lockPar += s[i] == ')' ? 1 : -1; 
        }
        else{
            flexPar++;
        }
        if (lockPar + flexPar < 0) return false; //can not be a valid parenthesis
    }
    return true;

    
  }
}