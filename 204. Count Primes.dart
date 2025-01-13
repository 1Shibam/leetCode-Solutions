class Solution {
  int countPrimes(int n) {
  if (n <= 2) return 0; // No primes less than 2

  // Create a boolean list to track prime status
  List<bool> isPrime = List.filled(n, true);
  isPrime[0] = false; // 0 is not prime
  isPrime[1] = false; // 1 is not prime

  for (int i = 2; i * i < n; i++) {
    if (isPrime[i]) {
      // Mark all multiples of i as not prime
      for (int j = i * i; j < n; j += i) {
        isPrime[j] = false;
      }
    }
  }

  // Count the remaining primes
  int total = 0;
  for (bool prime in isPrime) {
    if (prime) total++;
  }

  return total;
}

}