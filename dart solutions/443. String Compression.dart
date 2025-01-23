class Solution {
  int compress(List<String> chars) {
    int i = 0;
    int index = 0;
    while(i<chars.length){
        
        String currChar = chars[i];
        int count = 0;
        while(i<chars.length && chars[i] == currChar){
             count++;
            i++;
           
        }
        chars[index] = currChar;
        index++;
        if(count>1){
            for(String c in count.toString().split('')){
                chars[index] = c;
                index++;
            }
        }
    }
    return index;
    
  }
}