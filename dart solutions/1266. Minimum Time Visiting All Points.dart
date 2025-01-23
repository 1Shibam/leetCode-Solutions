import 'dart:math';

class Solution {
  int minTimeToVisitAllPoints(List<List<int>> points) {
    int diff = 0;
    if(points.length == 1){
        return diff;
    }
    for(int i=0; i<points.length-1; i++){
        int x1 = points[i][0];  
        int y1 =  points[i][1];
        int x2 = points[i+1][0];
        int y2 = points[i+1][1];
        int first = (x1-x2).abs();
        int second = (y1-y2).abs();
        
        diff += max(first, second);
    }
    return diff;
    
  }
}