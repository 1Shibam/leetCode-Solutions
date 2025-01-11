import 'dart:math';

class Solution {

  List<List<int>> t = [];
  int solve(List<int> jd, int n, int idx, int d) {
    // Base case: Only one day left
    if (d == 1) {
      return jd.sublist(idx).reduce((a, b) => max(a, b));
    }

    if (t[idx][d] != -1) {
      return t[idx][d];
    }

    int maxD = jd[idx];
    int finalRes = 1<<63 -1; 

    for (int i = idx; i <= n - d; i++) {
      maxD = max(maxD, jd[i]);
      int result = maxD + solve(jd, n, i + 1, d - 1);
      finalRes = min(finalRes, result);
    }

    return t[idx][d] = finalRes;
  }

  int minDifficulty(List<int> jobDifficulty, int d) {
    int n = jobDifficulty.length;
    // Base cases
    if (d == n) return jobDifficulty.reduce((a, b) => a + b); // Each job in a separate day
    if (n < d) return -1; // Not enough jobs to assign to d days
    // Initialize DP table with -1
    t = List.generate(n, (i) => List.filled(d + 1, -1));

    // Start solving from the first job (index 0) and d days
    return solve(jobDifficulty, n, 0, d);
  }
}