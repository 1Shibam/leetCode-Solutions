class Solution {
  List<int> smallerNumbersThanCurrent(List<int> nums) {

    Map<int, int> myMap = {};
    List<int> sortedList = List.from(nums)..sort();
    List<int> resultList = [];
    for(int i=0; i<sortedList.length; i++){
        if(!myMap.containsKey(sortedList[i])){
            myMap[sortedList[i]] = i;
        }
    }
    for(int j=0; j<nums.length; j++){
        resultList.add(myMap[nums[j]]!);
    }
    return resultList;
  }
}