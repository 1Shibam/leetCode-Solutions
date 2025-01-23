class Solution {
  String orderlyQueue(String s, int k) {
    String result = s;
    int n = s.length;
    if(k > 1){
    List<String> chars = List.from(s.split(''));
    chars.sort();
    return chars.join('');
    }
    else{
        for(int i = 1; i<n; i++){
            String temp = s.substring(i) + s.substring(0, i);
             if (temp.compareTo(result) < 0) {
          result = temp;
        }
        }        
    }
    return result;
    
  }
}