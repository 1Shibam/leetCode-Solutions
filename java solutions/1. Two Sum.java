import java.util.HashMap;
import java.util.Map;

class Solution {
    public int[] twoSum(int[] nums, int target) {
      Map<Integer, Integer> values = new HashMap<>();
      for(int i = 0 ; i<nums.length; i++){
        int find = target - nums[i];
        if(values.containsKey(find)){
          return new int[]{values.get(find), i};
        }
        values.put(nums[i], i);
      }
      return new int[]{};
        
    }
}