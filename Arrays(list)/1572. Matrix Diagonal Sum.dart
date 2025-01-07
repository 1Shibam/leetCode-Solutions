class Solution {
  int diagonalSum(List<List<int>> mat) {
    int len = mat.length;
    int left = 0;
    int right = len - 1;
    int result = 0;
    int index = 0;
    if(len %  2 == 0){
        while(left < len && right >= 0){
            result = result + mat[index][left] + mat[index][right];
            left++;
            right--;
            index++;
        }
    }
    if(len % 2 == 1){
        while(left < len && right >= 0){
            if(left == right) {
                result += mat[index][left];
                index++;
                left++;
                right--;
            }
            else{
            result = result + mat[index][left] + mat[index][right];
            left++;
            right--;
            index++;
            }
        }

    }
    return result;
    
  }
}