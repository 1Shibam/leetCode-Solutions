class Solution {
  String replaceDigits(String s) {
    String chars = 'abcdefghijklmnopqrstuvwxyz';
    StringBuffer buff = StringBuffer();
    String currChar = '';
    int currNum = 0;
    for(int i = 0; i<s.length; i++){
        
        if(i % 2 == 0){
            currChar = s[i];
            buff.write(currChar);
        }
        if(i % 2 == 1){
            currNum = int.parse(s[i]);
            int index = chars.indexOf(currChar);
        buff.write(chars[currNum+index]);
        }

    }
    return buff.toString();
    
  }
}