class Solution {
  bool checkIfPangram(String sentence) {
    String alphabets = 'abcdefghijklmnopqrstuvwxyz';
    for(int i = 0; i<alphabets.length; i++){
        if(sentence.indexOf(alphabets[i]) == -1) return false;
        else true;
        
    }
    return true;
    
  }
}