class Solution {
  int findScore(List<int> nums) {
      var total = 0;
      final List<Pair> e = [];
      for (int i = 0; i < nums.length; i++) {
          e.add(Pair(nums[i], i));
      }

      final List<bool> marked = List.filled(nums.length, false);

      e.sort((a, b) {
          if (a.val == b.val) {
              return a.idx.compareTo(b.idx);
          } else {
              return a.val.compareTo(b.val);
          }
      });
      for (var i in e) {
          final value = i.val;
          final index = i.idx;
          if (!marked[index]) {
              total += value;
              marked[index] = true;
              if (index > 0) {
                  marked[index - 1] = true;
              }
              if (index < nums.length - 1) {
                  marked[index + 1] = true;
              }             
          }
      }

      return total;
  }
}

class Pair<T extends Object> {
    Pair(this.val, this.idx);

    final int val;
    final int idx;
}