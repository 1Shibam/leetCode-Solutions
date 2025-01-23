class Solution {
  bool canConstruct(String s, int k) {
    Map<String, int> freq = {};
    int oddCount = 0;

    // Counting each character frequencies
    for (var str in s.split('')) {
      freq[str] = (freq[str] ?? 0) + 1;
    }
    if(s.length == k) return true;
    else if(s.length < k) return false;
    else{
        for(var key in freq.keys){
            if (freq[key]! % 2 != 0) oddCount++;
        }
    }
    return k >= oddCount;
    
  }
}