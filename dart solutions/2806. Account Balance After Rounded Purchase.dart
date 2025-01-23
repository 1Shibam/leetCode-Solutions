class Solution {
  int accountBalanceAfterPurchase(int purchaseAmount) {
    int rem = purchaseAmount % 10;
    if(purchaseAmount % 10 >= 5){
        return 100 - (purchaseAmount - rem + 10);

    }
    else{
        return 100 - (purchaseAmount -rem);
    } 
  }
}