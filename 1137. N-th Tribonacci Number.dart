class Solution {
  int tribonacci(int n) {
    int f1 = 0;
    int f2 = 1;
    int f3 = 1;
    for(int i = 1; i<=n; i++){
        int next = f1+f2+f3;
        f1=f2;
        f2=f3;
        f3 = next;
    }
    return f1;
    
  }
}
// class Solution {
//     fun tribonacci(n: Int): Int {
//         var f1 = 0
//         var f2 = 1
//         var f3 = 1
//         var i: Int
//         for(i in 1..n){
//             var next =  f1+f2+f3
//             f1 = f2
//             f2 = f3
//             f3 = next
//         }
//         return f1
        
//     }
// }