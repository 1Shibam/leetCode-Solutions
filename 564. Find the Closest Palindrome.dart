import 'dart:math';

class Solution {
  // Helper function to create a palindrome by mirroring the first half
  int halfToPalindrome(int left, bool even) {
    int resultNum = left;
    if (!even) {
      left = left ~/ 10;  // Integer division for truncating
    }

    // Mirroring the first half to form a palindrome
    while (left > 0) {
      int digit = left % 10;
      resultNum = resultNum * 10 + digit;
      left ~/= 10;  // Integer division for truncating
    }
    return resultNum;
  }

  String nearestPalindromic(String n) {
    int len = n.length;
    int mid = len ~/ 2;
    int firstHalf = int.parse(n.substring(0, (len % 2 == 0) ? mid : mid + 1));

    // Generate possible palindromic candidates
    List<int> possibleResults = [];
    possibleResults.add(halfToPalindrome(firstHalf, len % 2 == 0));
    possibleResults.add(halfToPalindrome(firstHalf + 1, len % 2 == 0));
    possibleResults.add(halfToPalindrome(firstHalf - 1, len % 2 == 0));
    possibleResults.add(pow(10, len - 1).toInt() - 1);  // Edge case like 999...
    possibleResults.add(pow(10, len).toInt() + 1);      // Edge case like 100...001

    int diff = double.maxFinite.toInt(); // Using max possible int value
    int result = 0;
    int originalNum = int.parse(n);

    // Find the closest palindrome
    for (int num in possibleResults) {
      if (num == originalNum) continue;
      if ((num - originalNum).abs() < diff) {
        diff = (num - originalNum).abs();
        result = num;
      } else if ((num - originalNum).abs() == diff) {
        result = num < result ? num : result;  // Ensure the smallest palindrome in case of tie
      }
    }

    return result.toString();
  }
}
