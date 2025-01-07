import 'dart:math';

class Solution {
  List<List<int>> minimumAbsDifference(List<int> arr) {
    arr.sort();
    List<List<int>> result = [];
    int minDiff = (pow(2, 63) -1).toInt();
    for(int i=1; i<arr.length; i++){
        minDiff = min(minDiff, arr[i] - arr[i-1]);
    }
    for(int i=1; i<arr.length; i++){
        if(arr[i] - arr[i-1] == minDiff){
            result.add([arr[i-1], arr[i]]);
        }
    }
    return result;
    
  }
}