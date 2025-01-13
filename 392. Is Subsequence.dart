class Solution {
  bool isSubsequence(String s, String t) {
    int i = 0;
    if(s.isEmpty) return true;
    
    for(int j = 0; j<  t.length; j++){
        if(i < s.length && t[j] == s[i]){
            i++;
        }
        
    }
    return i == s.length;
    
    
  }
}