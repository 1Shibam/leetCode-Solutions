class Solution {
  int superPow(int a, List<int> b) {
    const int mod = 1337;
    a %= mod; // Reduce a mod 1337
    int result = 1;

    for (int digit in b) {
      result = powMod(result, 10, mod) * powMod(a, digit, mod) % mod;
    }

    return result;
  }

  int powMod(int base, int exp, int mod) {
    int res = 1;
    base %= mod; // Reduce base mod mod
    while (exp > 0) {
      if (exp % 2 == 1) { // If exp is odd
        res = res * base % mod;
      }
      base = base * base % mod; // Square the base
      exp ~/= 2; // Halve the exponent
    }
    return res;
  }
}