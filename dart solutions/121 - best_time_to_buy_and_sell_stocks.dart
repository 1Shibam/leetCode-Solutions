import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    int profit = 0;
    int minimumPrice = prices.first;
    for(int i =0; i<prices.length; i++){
        minimumPrice = min(minimumPrice, prices[i]);
        profit = max(profit, prices[i] - minimumPrice);
    }
    return profit;
    
    
  }
}