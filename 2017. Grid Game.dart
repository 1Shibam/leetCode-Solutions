import 'dart:math';
class Solution {
  int gridGame(List<List<int>> grid) {
    final m = grid[0].length;
    // prefix sum
    for (int i = 1; i < m; i++){
        grid[0][i] += grid[0][i - 1];
        grid[1][i] += grid[1][i - 1];
    }
    int res = grid[0].last - grid[0][0];
    for (int i = 1; i < m; i++){
        final cur = max(grid[0].last - grid[0][i], grid[1][i - 1]);
        res = min(res, cur);
    }
    return res;
  }
}