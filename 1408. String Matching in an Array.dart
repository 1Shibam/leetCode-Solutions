class Solution {
  List<String> stringMatching(List<String> words) {
    int index = 0;
    List<String> result = [];
    while(index <words.length){
        for(int i = 0; i<words.length; i++){
            if(index == i) continue;
            
            else{
                if(words[index].indexOf(words[i]) != -1){
                    result.add(words[i]);
                }
            }
        }
        index++;
    }
    return result.toSet().toList();
    
  }
}