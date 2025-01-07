class Solution {
  int maxCount(List<int> banned, int n, int maxSum) {
    Set<int> bannedSet = banned.toSet();
    int sum = 0;
    int count = 0;
    for(int i = 1; i <= n; i++){
        if(bannedSet.contains(i)) continue;
        if(sum+i > maxSum) break;
        sum += i;
        count++;
    }
    return count;
    
  }
}