class Solution {
    fun fib(n: Int): Int {
        
        var f1 = 0
        var f2 = 1
        
        for(i in 1..n){
            var next = f1+f2
            f1 = f2
            f2 = next
        }

        return f1
    }
}