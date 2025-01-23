class Solution {
  int minimumLength(String s) {

    //map to store the frequency of characters in the string
    Map<String, int> chars = {};

    for(int i = 0; i< s.length; i++){
        chars[s[i]] = (chars[s[i]] ?? 0) + 1;
    }
    //odd frequencies can be deleted till only one is left
    //even frequencies can be deleted till only two is left
    for(var k in chars.keys){
        if(chars[k]! % 2 == 0) chars[k] = 2;
        else chars[k] = 1;
    }
    //sum the remaining frequencies values
    int sum = chars.values.reduce((a, b) => a + b);

    return sum;
    
  }
}