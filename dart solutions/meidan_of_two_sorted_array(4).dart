class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> result = List.from(nums1+nums2);
    result.sort();
    double median = 0;
   
    if(result.length == 1) median = result.first.toDouble();
    if(result.length == 2) median = (result.first + result.last)/2;
    else{
        if(result.length%2 == 0){
            int first = result.length ~/ 2 - 1;
            int second = result.length ~/ 2;
            median = (result[first]+result[second])/2;
        }
        else{
            int index = (result.length ~/2);
            median = result[index].toDouble();
        }
    }
    return median;

    
  }
}