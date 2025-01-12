class Solution {
  int subsetXORSum(List<int> nums) {
    int ans = 0, l ,val;
    List<int> store = [0];
    for(int n in nums){
        l = store.length;
        for(int i = 0;i<l;i++){
            val = store[i] ^ n;
            ans += val;
            store.add(val);
        }
    }
    return ans;
  }
}