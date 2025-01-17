class Solution {
  bool doesValidArrayExist(List<int> derived) {
    int n = derived.length;
    if (n == 1) {
        return derived[0] == 0;
    }
    int i = 0;
    List<int> original = List.generate(n, (_) => 0);
    while(i<n) {
        if (i == n-1) {
            if (original[0] ^ original.last != derived[i]) {
                return false;
            }
        } else {
            if (derived[i] == 1) {
                if (original[i] == 1) {
                    original[i+1] = 0;
                } else {
                    original[i+1] = 1;
                }
            } else {
                if (original[i] == 1) {
                    original[i+1] = 1;
                } else {
                    original[i+1] = 0;
                }
            }
        } 
        i++;
    }
    return true; 
  }
}