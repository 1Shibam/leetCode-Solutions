class Solution {
  List<List<int>> combinationSum2(List<int> candidates, int target) {
    candidates.sort(); // Sort to handle duplicates easily
    List<List<int>> result = [];
    List<int> currentCombination = [];

    void backtrack(int start, int remainingTarget) {
      if (remainingTarget == 0) {
        result.add(List.from(currentCombination));
        return;
      }

      for (int i = start; i < candidates.length; i++) {
        // Skip duplicates
        if (i > start && candidates[i] == candidates[i - 1]) continue;

        if (candidates[i] > remainingTarget) break; // No point in continuing

        currentCombination.add(candidates[i]);
        backtrack(
            i + 1, remainingTarget - candidates[i]); // Move to the next index
        currentCombination.removeLast(); // Backtrack
      }
    }

    backtrack(0, target);
    return result;
  }
}
