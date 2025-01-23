import 'dart:math';

class Solution {
  int candy(List<int> ratings) {
    int n = ratings.length;
    List<int> children = List.filled(n, 1); // Initialize everyone with 1 candy
    int total = 0;

    // Left-to-right pass
    for (int i = 1; i < n; i++) {
      if (ratings[i] > ratings[i - 1]) {
        children[i] = children[i - 1] + 1;
      }
    }

    // Right-to-left pass
    for (int i = n - 2; i >= 0; i--) {
      if (ratings[i] > ratings[i + 1]) {
        children[i] = max(children[i], children[i + 1] + 1);
      }
    }

    // Calculate total candies
    for (int candy in children) {
      total += candy;
    }

    return total;
  }
}
