class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    // Pointers for nums1 and nums2
    int i = m - 1; // Pointer for the last valid element in nums1
    int j = n - 1; // Pointer for the last element in nums2
    int k = m + n - 1; // Pointer for the last position in nums1

    // Merge the two arrays starting from the back
    while (i >= 0 && j >= 0) {
      if (nums1[i] > nums2[j]) {
        nums1[k] = nums1[i];
        i--;
      } else {
        nums1[k] = nums2[j];
        j--;
      }
      k--;
    }

    while (j >= 0) {
      nums1[k] = nums2[j];
      j--;
      k--;
    }


}
}
