class Solution {
  int maxDistance(List<int> nums1, List<int> nums2) {
    int maxDist = 0;
    int l1 = 0;
    int l2 = 0;
    while(l1 < nums1.length && l2 < nums2.length){
        if(nums1[l1]<=nums2[l2]){
            maxDist = (l2-l1) > maxDist ? (l2-l1) : maxDist;  
            l2++;  
        }
        else l1++;
    }
    return maxDist;
  }
}