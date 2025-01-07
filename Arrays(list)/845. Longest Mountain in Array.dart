class Solution {
  int longestMountain(List<int> arr) {
    int longLength = 0;
    int size = arr.length;
    if(size<3) return 0;

    // [2,1,4,7,3,2,5] lol

    for(int i = 1; i < size-1; i++){
        //when if is true we find the peak of the array or mountain
        if(arr[i-1]<arr[i] && arr[i] > arr[i+1]){
            //sub mountain on the left
            int left = i-1;

            //sub mountain on the right
            int right = i+1;

            //checking how many sub mountains are there in left decreasing
            while(left > 0 && arr[left-1] < arr[left]) left--;

            //checking how many sub mountsains are there in right decreasing
            while(right<size-1 &&arr[right+1]<arr[right]) right++;

            //since left and right are indices they are counted twice for the same length
            //so we subtract left from the right to get actual length
            int maxLen = right - left + 1;
            
            //chekking if the length is greater than the length we initialized
            longLength = longLength > maxLen ? longLength : maxLen;
        }
    }
    return longLength;
    
  }
}