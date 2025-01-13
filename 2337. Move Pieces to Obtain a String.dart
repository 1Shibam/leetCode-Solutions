class Solution {
  bool canChange(String start, String target) {
    if(start.replaceAll('_', '')!= target.replaceAll('_','')) return false;
     int n = start.length;
     int i = 0, j = 0;

  while (i < n && j < n) {
    // Skip blanks in both strings
    while (i < n && start[i] == '_') i++;
    while (j < n && target[j] == '_') j++;

    if (i < n && j < n) {
      // Characters must match
      if (start[i] != target[j]) return false;
      // Check movement constraints
      if (start[i] == 'L' && i < j) return false; // 'L' can't move right
      if (start[i] == 'R' && i > j) return false; // 'R' can't move left

      // Move both pointers
      i++;
      j++;
    }
  }

  // Ensure remaining characters in both strings are blanks
  while (i < n) {
    if (start[i] != '_') return false;
    i++;
  }
  while (j < n) {
    if (target[j] != '_') return false;
    j++;
  }

  return true;
    
  }
}