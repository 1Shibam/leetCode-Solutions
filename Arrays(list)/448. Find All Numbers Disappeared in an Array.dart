class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    int n = nums.length;
    List<int> noDuplicates = nums.toSet().toList();
    List<int> missing = [];
    // List<int> expectedList = [];
    // for(int i =1; i<= n; i++){
    //     expectedList.add(i);
    // }
    // var missingElement = expectedList.where((element) => !noDuplicates.contains(element) ).toList();
    // return missingElement;

    //approach 2
    // int n = nums.length;
    // for (int i = 0; i < n; i++) {
    //   int index = nums[i].abs() - 1; // Convert to 0-based index
    //   if (nums[index] > 0) {
    //     nums[index] = -nums[index]; // Mark as negative to indicate presence
    //   }
    // }
    // List<int> missingNumbers = [];
    // for (int i = 0; i < n; i++) {
    //   if (nums[i] > 0) { // Positive value indicates missing number
    //     missingNumbers.add(i + 1); // Convert back to 1-based index
    //   }
    // }

    // return missingNumbers;
    for(int i =1; i<=n; i++){
        if(noDuplicates.contains(i)){
            continue;
        }
        else missing.add(i);
    }
    return missing;
    
  }
  
}