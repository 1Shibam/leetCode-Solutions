class Solution {
  int coinChange(List<int> coins, int amount) {
    // Create a DP array initialized to a very large number
    List<int> dp = List.filled(amount + 1, amount + 1);
    dp[0] = 0; // Base case: 0 coins to make amount 0

    for (int i = 1; i <= amount; i++) {
      for (int coin in coins) {
        if (i >= coin) {
          dp[i] = dp[i].clamp(0, dp[i - coin] + 1);
        }
      }
    }

    return dp[amount] > amount ? -1 : dp[amount];
  }
}
