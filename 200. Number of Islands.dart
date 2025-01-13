import 'dart:collection';
class Solution {
  int numIslands(List<List<String>> grid) {
    int totalIslands = 0;
    if (grid.isEmpty) return totalIslands; // Handle empty grid case

    int rows = grid.length;
    int columns = grid[0].length;

    // Directions for moving up, down, left, right
    List<List<int>> directions = [
      [0, 1],  // Right
      [0, -1], // Left
      [1, 0],  // Down
      [-1, 0]  // Up
    ];

    // Helper function for BFS
    void bfs(int a, int b) {
      Queue<List<int>> myQ = Queue();
      myQ.add([a, b]);
      grid[a][b] = '0'; // Mark as visited

      while (myQ.isNotEmpty) {
        List<int> current = myQ.removeFirst();
        int currentX = current[0];
        int currentY = current[1];

        // Explore all 4 directions
        for (var direct in directions) {
          int newX = currentX + direct[0];
          int newY = currentY + direct[1];

          // Check bounds first, then unvisited land ('1')
          if (newX >= 0 &&
              newX < rows &&
              newY >= 0 &&
              newY < columns &&
              grid[newX][newY] == '1') {
            myQ.add([newX, newY]);
            grid[newX][newY] = '0'; // Mark as visited
          }
        }
      }
    }

    // Traverse the grid
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < columns; j++) {
        if (grid[i][j] == '1') {
          totalIslands++; // Found a new island
          bfs(i, j);      // Perform BFS to mark the entire island
        }
      }
    }

    return totalIslands; // Return total number of islands
  }
}