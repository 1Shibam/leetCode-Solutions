#brute force solution
#Time complexity: O(n^2)
#two nested loops are used to iterate through the list and find the sum of two numbers equal to the target

from typing import List
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
      for i in range(len(nums)):
        for j in range(i+1, len(nums)):
          if(nums[i]+nums[j] == target):
            return [i,j]
            break
      

#optimized solution
#Time complexity: O(n)
#map is used to store the difference between the target and the current element