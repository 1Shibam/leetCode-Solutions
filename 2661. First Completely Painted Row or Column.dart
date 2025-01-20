//T.C : O(m*n)
//S.C : O(m*n)
import 'dart:math';

class Solution {
  int firstCompleteIndex(List<int> arr, List<List<int>> mat) {
    int m = mat.length;
    int n = mat[0].length;

    // Map to store value and its index in arr
    Map<int, int> mp = {};

    for (int i = 0; i < arr.length; i++) {
      mp[arr[i]] = i;
    }

    int minIndex = double.maxFinite.toInt(); // Similar to INT_MAX in C++

    // Check each row one by one
    for (int row = 0; row < m; row++) {
      int lastIndex = -1; // Similar to INT_MIN in C++

      for (int col = 0; col < n; col++) {
        int val = mat[row][col];
        int idx = mp[val]!;
        lastIndex = max(lastIndex, idx);
      }

      minIndex = min(minIndex, lastIndex);
    }

    // Check each column one by one
    for (int col = 0; col < n; col++) {
      int lastIndex = -1; // Similar to INT_MIN in C++

      for (int row = 0; row < m; row++) {
        int val = mat[row][col];
        int idx = mp[val]!;
        lastIndex = max(lastIndex, idx);
      }

      minIndex = min(minIndex, lastIndex);
    }

    return minIndex;
  }
}
