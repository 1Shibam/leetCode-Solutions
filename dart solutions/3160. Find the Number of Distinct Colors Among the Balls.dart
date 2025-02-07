class Solution {
  List<int> queryResults(int limit, List<List<int>> queries) {
    Map<int, int> ballColors = {};
    Map<int, int> colorCount = {};
    List<int> result = [];
    int distinctColors = 0;

    for (var query in queries) {
      int ball = query[0];
      int color = query[1];

      if (ballColors.containsKey(ball)) {
        int prevColor = ballColors[ball]!;
        colorCount[prevColor] = colorCount[prevColor]! - 1;
        if (colorCount[prevColor] == 0) {
          distinctColors--;
        }
      }

      ballColors[ball] = color;
      colorCount[color] = (colorCount[color] ?? 0) + 1;
      if (colorCount[color] == 1) {
        distinctColors++;
      }

      result.add(distinctColors);
    }

    return result;
  }
}