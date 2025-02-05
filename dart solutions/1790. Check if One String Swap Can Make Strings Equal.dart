class Solution {
  bool areAlmostEqual(String s1, String s2) {
    int len = s1.length;
    if(s1 == s2) return true;
    List<int> diffChar = [];
    for(int i = 0; i<len; i++){
      if(s1[i] != s2[i]) diffChar.add(i);
    }
    if(diffChar.length != 2 ) return false;
    String firstChar = s1[diffChar[0]];
    String secChar = s1[diffChar[1]];

    return (firstChar == s2[diffChar[1]] && secChar == s2[diffChar[0]]);
    
  }
}