class Solution {
  String reverseOnlyLetters(String s) {
    List<String>res = [];
    List<String> result = List.from(s.split(''));

    for(int i = 0 ; i < s.length ; i++){
        if(RegExp(r'[a-zA-Z]').hasMatch(s[i])){
            res.add(s[i]);
        }
    }
    res = res.reversed.toList();
    int letterIndex = 0;

    for(int i = 0 ; i < s.length ; i++){
        if(RegExp(r'[a-zA-Z]').hasMatch(s[i])){
           result[i] = res[letterIndex];
           letterIndex++;
        }
    }
    return result.join();
  }
}