import 'dart:math';

class Solution {
  int maxTwoEvents(List<List<int>> events) {
    int startTime = 0;
    int endTime = 1;
    int value = 2;

    // Step 1: Sort events by endTime
    events.sort((a, b) => a[endTime].compareTo(b[endTime]));

    // Step 2: Create a prefix array for max value
    List<int> prefixMax = List.filled(events.length, 0);
    prefixMax[0] = events[0][value];
    for (int i = 1; i < events.length; i++) {
      prefixMax[i] = max(prefixMax[i - 1], events[i][value]);
    }

    int maxSum = 0;

    // Step 3: Iterate through events to calculate maximum sum
    for (int i = 0; i < events.length; i++) {
      int currentValue = events[i][value];

      // Binary search to find the latest event that ends before events[i] starts
      int low = 0, high = i - 1, best = -1;
      while (low <= high) {
        int mid = (low + high) ~/ 2;
        if (events[mid][endTime] < events[i][startTime]) {
          best = mid;
          low = mid + 1;
        } else {
          high = mid - 1;
        }
      }

      // If a valid previous event is found, add its value
      if (best != -1) {
        currentValue += prefixMax[best];
      }

      // Update the maximum sum
      maxSum = max(maxSum, currentValue);
    }

    return maxSum;
  }
} 