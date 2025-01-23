class Solution {
  int numWaterBottles(int numBottles, int numExchange) {
        int bottles = numBottles;
        int total = bottles;
        int newBottles;
        int remain;
        while(bottles>=numExchange){
            newBottles = bottles~/numExchange;
            remain = bottles%numExchange;
            total = total + newBottles;
            bottles = newBottles + remain;
        }
        return total;

    
  }
}
//kotlin

// class Solution {
//     fun numWaterBottles(numBottles: Int, numExchange: Int): Int {
//         var bottles = numBottles
//         var total = bottles
//         var newBottles: Int
//         var remain: Int
//         while(bottles>=numExchange){
//             newBottles = bottles/numExchange
//             remain = bottles%numExchange
//             total = total + newBottles
//             bottles = newBottles + remain
//         }
//         return total
        
//     }
// }