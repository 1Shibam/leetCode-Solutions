class Solution {
  String makeGood(String s) {
    List<String> stack = [];
    for (var str in s.split('')) { 
      if (stack.isNotEmpty && 
          ((stack.last.codeUnitAt(0) + 32 == str.codeUnitAt(0)) || 
           (stack.last.codeUnitAt(0) - 32 == str.codeUnitAt(0)))) {
        stack.removeLast();
      } else {
        stack.add(str);
      }
    }
    return stack.join('');
  }
}
