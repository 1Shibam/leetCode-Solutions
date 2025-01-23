class Solution {
  bool isPowerOfTwo(int n) {
    int num = n;
    if(num==0) return false;
    if(num==1) return true;
    else{
        while(num%2 == 0){
                num = num~/2;

            }
            if(num==1) return true;
            else return false;

    }
    
  }
}