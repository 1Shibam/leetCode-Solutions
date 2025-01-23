class Solution {
  int maxScore(String s) {
    int totalOnes = 0;

    // Count total number of '1's
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '1') {
        totalOnes++;
      }
    }

    int max = 0;
    int leftZeros = 0;
    int rightOnes = totalOnes;

    // Iterate through the string, excluding the last character for splitting
    for (int i = 0; i < s.length - 1; i++) {
      if (s[i] == '0') {
        leftZeros++;
      } else {
        rightOnes--;
      }

      // Calculate score for this split
      int score = leftZeros + rightOnes;
      if (score > max) {
        max = score;
      }
    }

    return max;
  }
}
