import 'package:collection/collection.dart';

class Solution {
  int trapRainWater(List<List<int>> heightMap) {
    if (heightMap.isEmpty || heightMap[0].isEmpty) return 0;

    int m = heightMap.length;
    int n = heightMap[0].length;

    // Priority queue to process the lowest boundary first
    var pq = HeapPriorityQueue<List<int>>(
      (a, b) => a[0].compareTo(b[0]) // Compare based on height
    );

    List<List<bool>> visited = List.generate(m, (_) => List.generate(n, (_) => false));

    // Add all border cells to the priority queue
    for (int i = 0; i < m; i++) {
      for (int j = 0; j < n; j++) {
        if (i == 0 || i == m - 1 || j == 0 || j == n - 1) {
          pq.add([heightMap[i][j], i, j]);
          visited[i][j] = true;
        }
      }
    }

    int waterTrapped = 0;
    List<List<int>> directions = [
      [0, 1], [1, 0], [0, -1], [-1, 0]
    ];

    while (pq.isNotEmpty) {
      var cell = pq.removeFirst();
      int height = cell[0], x = cell[1], y = cell[2];

      for (var dir in directions) {
        int nx = x + dir[0], ny = y + dir[1];

        if (nx >= 0 && nx < m && ny >= 0 && ny < n && !visited[nx][ny]) {
          visited[nx][ny] = true;
          int neighborHeight = heightMap[nx][ny];
          waterTrapped += (height > neighborHeight) ? height - neighborHeight : 0;
          pq.add([neighborHeight > height ? neighborHeight : height, nx, ny]);
        }
      }
    }

    return waterTrapped;
  }
}