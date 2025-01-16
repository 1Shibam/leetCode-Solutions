// Brute force - 
class Solution1 {
  String firstPalindrome(List<String> words) {
    String result = '';
    for(int i = 0; i<words.length; i++){
        String revWord = words[i].split('').reversed.join('');
        if(words[i] == revWord){
            result = words[i];
            break;
        }
    }
    return result;
    
  }
}
