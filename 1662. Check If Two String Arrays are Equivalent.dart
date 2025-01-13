class Solution {
  bool arrayStringsAreEqual(List<String> word1, List<String> word2) {
    String str1 = word1.join('');
    String str2 = word2.join('');
    if(str1.length != str2.length) return false;
    if(str1.indexOf(str2) == 0) return true;
    return false;
    
  }
}