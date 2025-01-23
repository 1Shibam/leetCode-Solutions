import 'dart:math';

class Solution {
  int trap(List<int> height) {
    int n = height.length;
    if (n < 3) return 0;

    List<int> leftMax = List.filled(n, 0);
    List<int> rightMax = List.filled(n, 0);

    leftMax[0] = height[0];
    for (int i = 1; i < n; i++) {
      leftMax[i] = max(leftMax[i - 1], height[i]);
    }

    rightMax[n - 1] = height[n - 1];
    for (int i = n - 2; i >= 0; i--) {
      rightMax[i] = max(rightMax[i + 1], height[i]);
    }

    int sum = 0;
    for (int i = 1; i < n - 1; i++) {
      int h = min(leftMax[i], rightMax[i]) - height[i];
      if (h > 0) sum += h; 
    }
    return sum;
  }
}
