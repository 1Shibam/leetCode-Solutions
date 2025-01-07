class Solution {
  List<int> finalPrices(List<int> prices) {
    List<int> indexStack = [];
    for(int i = 0; i < prices.length; i++){
        while(indexStack.isNotEmpty && prices[indexStack.last] >= prices[i]){
            int index = indexStack.removeLast();
            prices[index] -= prices[i];
        }
        indexStack.add(i);
    }
    return prices;
    
  }
}