class Solution {
  int distributeCandies(List<int> candyType) {
    int canEat = candyType.length ~/ 2;
    Set<int> types = candyType.toSet();
    int n = types.length;
    return canEat > n ? n : canEat; 
  }
}