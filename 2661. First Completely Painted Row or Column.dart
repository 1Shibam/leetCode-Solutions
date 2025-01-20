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

//T.C : O(m*n)
//S.C : O((m*n) + m + n)
class Solution2 {
  int firstCompleteIndex(List<int> arr, List<List<int>> mat) {
    int m = mat.length;
    int n = mat[0].length;

    // Map to store value to cell-coordinate [row, col]
    Map<int, List<int>> mp = {};

    for (int i = 0; i < m; i++) {
      for (int j = 0; j < n; j++) {
        int val = mat[i][j];
        mp[val] = [i, j];
      }
    }

    // Arrays to track painted cells in each row and column
    List<int> rowCountPaint = List.filled(m, 0);  // [i] = how many painted in row i
    List<int> colCountPaint = List.filled(n, 0);  // [i] = how many painted in col i

    for (int i = 0; i < arr.length; i++) {
      int val = arr[i];
      var cell = mp[val]!;
      int row = cell[0];
      int col = cell[1];

      rowCountPaint[row]++;
      colCountPaint[col]++;

      if (rowCountPaint[row] == n || colCountPaint[col] == m) {
        return i;  // Return the index when row or column is fully painted
      }
    }

    return -1;  // If no row or column is completely painted
  }
}

class Solution3 {
  bool checkRowPainted(List<List<int>> mat, int row) {
    for (int col = 0; col < mat[0].length; col++) {
      if (mat[row][col] > 0) { // not painted
        return false;
      }
    }
    return true;
  }

  bool checkColPainted(List<List<int>> mat, int col) {
    for (int row = 0; row < mat.length; row++) {
      if (mat[row][col] > 0) { // not painted
        return false;
      }
    }
    return true;
  }

  int firstCompleteIndex3(List<int> arr, List<List<int>> mat) {
    int m = mat.length;
    int n = mat[0].length;

    // Map to store value to cell-coordinate [i][j]
    Map<int, List<int>> mp = {};

    for (int i = 0; i < m; i++) {
      for (int j = 0; j < n; j++) {
        int val = mat[i][j];
        mp[val] = [i, j];
      }
    }

    for (int i = 0; i < arr.length; i++) {
      int val = arr[i];

      var cell = mp[val]!;
      int row = cell[0];
      int col = cell[1];

      mat[row][col] *= -1; // painted

      if (checkRowPainted(mat, row) || checkColPainted(mat, col)) {
        return i;
      }
    }

    return -1;
  }
}
