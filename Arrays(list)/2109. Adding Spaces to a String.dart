class Solution {
  String addSpaces(String s, List<int> spaces) {
    StringBuffer result = StringBuffer();
    int index = 0;
        for(int i = 0; i<s.length; i++){
            if(index < spaces.length && i == spaces[index]){
                result.write(' ');
                index++;
            }
            result.write(s[i]);
        }
    return result.toString();
    
  }
}