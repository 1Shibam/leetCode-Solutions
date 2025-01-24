from typing import List


class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
      result = nums1 + nums2
      result.sort()
      n = len(result)
      if(n%2 == 1):
        mid = result[n//2]
        return float(mid)
      else:
        mid1 = result[n//2 - 1]
        mid2 = result[n//2]
        return (mid1+mid2)/2
      

        