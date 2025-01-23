class Solution {
  int countServers(List<List<int>> grid) {
 int m = grid.length; //row
  int n = grid[0].length; //column
  int serverCount = 0;
  
  // Lists to count the number of servers in each row and each column
  List<int> rowCount = List.filled(m, 0);
  List<int> colCount = List.filled(n, 0);

  // Step 1: Count the number of servers in each row and column
  for (int i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      if (grid[i][j] == 1) {
        rowCount[i]++;
        colCount[j]++;
      }
    }
  }
 // Step 2: Check each server to see if it communicates with another server
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      if (grid[i][j] == 1) {
        if (rowCount[i] > 1 || colCount[j] > 1) {
          serverCount++;
        }
      }
    }
  }
   return serverCount;
  }
}