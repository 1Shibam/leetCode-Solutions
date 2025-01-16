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

//optimized solutions 

class Solution2 {
    bool isPalindrome(String word){
        int left = 0;
        int right = word.length -1;
        while(left<right){
            if(word[left] != word[right]) return false;
            left++;
            right--;
        }
        return true;
    }
  String firstPalindrome(List<String> words) {
    for(String word in words){
        if(isPalindrome(word)){
            return word;
           
        }
    }
    return '';
    
  }
}