class Solution {
  List<int> addToArrayForm(List<int> num, int k) {
    List<int> result = [];
    int carry = k;
    int i = num.length - 1;

    // Process the digits of num and k
    while (i >= 0 || carry > 0) {
      if (i >= 0) {
        carry += num[i];
        i--;
      }
      result.add(carry % 10); // Add the current digit to the result
      carry ~/= 10; // Carry over the remaining part
    }

    // Reverse the result to get the correct order
    return result.reversed.toList();
  }
}
