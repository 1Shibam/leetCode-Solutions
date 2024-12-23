class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    List<int> resultMat = [];
    while(matrix.isNotEmpty){
    //add first row of the matrix to resultant matrix
    resultMat.addAll(matrix.removeAt(0));
    //add last element of each remaining row
    for(var element in matrix){
        if(element.isNotEmpty){
            resultMat.add(element.removeLast());

        }
    }
    //add last row in reverse order
    if(matrix.isNotEmpty){
        resultMat.addAll(matrix.removeLast().reversed);
    }
    //add first element of each remaining row
    for (int i = matrix.length - 1; i >= 0; i--) {
      if (matrix[i].isNotEmpty) {
        resultMat.add(matrix[i].removeAt(0));
      }
    }
    }
    return resultMat;
   

    }
}
