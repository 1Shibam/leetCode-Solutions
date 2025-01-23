class Solution {
  String reverseWords(String s) {
    List<String> words = s.split(' ');
    List<String> finalL = [];
    for(var w in words){
      List<String> revL = w.split('');
      String revF = revL.reversed.join('');
      finalL.add(revF);
      
    }
    return finalL.join(' ');
    
  }
}