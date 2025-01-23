class Solution {
  bool canMakeSubsequence(String str1, String str2) {
    int m = str1.length;
    int n = str2.length;

    if (n > m) return false; // If str2 is longer, it can't be a subsequence.

    int j = 0; // Pointer for str2

    for (int i = 0; i < m && j < n; i++) {
      // Check if characters match directly or after a cyclic increment
      if (str1[i] == str2[j] || canTransform(str1[i], str2[j])) {
        j++; // Move to the next character in str2
      }
    }

    return j == n; // True if all characters of str2 were matched
  }

  // Helper function to check if ch1 can transform to ch2 cyclically
  bool canTransform(String ch1, String ch2) {
    int char1 = ch1.codeUnitAt(0);
    int char2 = ch2.codeUnitAt(0);
    return (char1 + 1 - 97) % 26 + 97 == char2; // Properly handles 'z' to 'a'
  }
}
