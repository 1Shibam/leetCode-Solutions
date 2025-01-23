class Solution {
  int countPrefixSuffixPairs(List<String> words) {
    int index = 0;
    int count = 0;
    while(index<words.length-1){
        for(int i = index+1; i<words.length; i++){
            if(words[i].indexOf(words[index]) == 0 && 
            words[i].lastIndexOf(words[index]) == words[i].length - 
            words[index].length ){
                count++;
            }
        }
        index++;
    }
    return count;
    
  }
}