import 'dart:collection';
class Solution {
  int minCost(List<List<int>> grid) {
    int row = grid.length;
    int col = grid[0].length;

    //2-D list for direction handling
    List<List<int>> directions = [
      [0,1], [0,-1], [1,0], [-1,0]

      ];

      List<List<int>> cost = List.generate(
      row, (_) => List.generate(col, (_) => 1<<31 - 1));

      //Deque for performign bfs
      Queue<List<int>> deque = Queue();
      deque.add([0, 0, 0]);
      
      cost[0][0] = 0; //starting arrow will have zero cost as it must point in one direction
      while (deque.isNotEmpty) {
    List<int> current = deque.removeFirst();
    int x = current[0];
    int y = current[1];
    int currentCost = current[2];

    if (x == row - 1 && y == col - 1) return currentCost; // Reached the target

    // Check all 4 directions
    for (int d = 0; d < 4; d++) {
      int nx = x + directions[d][0];
      int ny = y + directions[d][1];
      int newCost = currentCost + (grid[x][y] == d + 1 ? 0 : 1);

      // Check if within bounds and if a better cost is found
      if (nx >= 0 && ny >= 0 && nx < row && ny < col && newCost < cost[nx][ny]) {
        cost[nx][ny] = newCost;

        // add to deque , front for cost 0 and back for cost 1
        if (grid[x][y] == d + 1) {
          deque.addFirst([nx, ny, newCost]);
        } else {
          deque.addLast([nx, ny, newCost]);
        }
      }
    }
  }

  return -1;
    
  }
}