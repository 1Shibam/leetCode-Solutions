class Solution {
  bool checkIfExist(List<int> arr) {
    Set<int> seen = {};
    
    for (int num in arr) {
      if (seen.contains(2 * num) || (num % 2 == 0 && seen.contains(num ~/ 2))) {
        return true;
      }
      seen.add(num);
    }
    
    return false;
  }
}
