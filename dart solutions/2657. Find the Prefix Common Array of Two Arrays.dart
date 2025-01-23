//brute force solution - always works :D O(n^2)
class Solution {
  List<int> findThePrefixCommonArray(List<int> A, List<int> B) {
    int index = 1;
    List<int> resC = [];
    while(index != A.length+1){
        int count = 0;
        List<int> subA = A.sublist(0,index);
        List<int> subB = B.sublist(0,index);
        for(int i = 0; i<subA.length; i++){
            if(subA.indexOf(subB[i]) == -1){
                continue;
            }
            else{
                count++;
            }
        }
        resC.add(count);
        index++;
    }
    return resC;
    
    
  }
}

//optimized - O(N)

class Solution2 {
  List<int> findThePrefixCommonArray(List<int> A, List<int> B) {
    Set<int> seen = {};
    List<int> resC = [];
    int count = 0;

    for (int i = 0; i < A.length; i++) {
      if (seen.contains(A[i])) {
        count++;
      } else {
        seen.add(A[i]);
      }

      if (seen.contains(B[i])) {
        count++;
      } else {
        seen.add(B[i]);
      }

      resC.add(count);
    }

    return resC;
  }
}
