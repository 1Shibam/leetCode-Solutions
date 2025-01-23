import 'dart:math';

class Solution {
  List<String> wordSubsets(List<String> words1, List<String> words2) {
 
  List<int> maxCharFreq = List.filled(26, 0); 
  for (var word in words2) {
    List<int> tempCharFreq = List.filled(26, 0); 
    for (var ch in word.split('')) {
      tempCharFreq[ch.codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
    }
    for (int i = 0; i < 26; i++) {
      maxCharFreq[i] = max(maxCharFreq[i], tempCharFreq[i]);
    }
  }
  List<String> universalWords = [];
  for (var word in words1) {
    List<int> tempCharFreq = List.filled(26, 0); 
    for (var ch in word.split('')) {
      tempCharFreq[ch.codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
    }

    bool isUniversal = true;
    for (int i = 0; i < 26; i++) {
      if (maxCharFreq[i] > tempCharFreq[i]) {
        isUniversal = false;
        break;
      }
    }

    if (isUniversal) {
      universalWords.add(word);
    }
  }

  return universalWords;
}

}