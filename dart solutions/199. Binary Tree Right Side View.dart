

  class TreeNode {
    int val;
    TreeNode? left;
    TreeNode? right;
   TreeNode([this.val = 0, this.left, this.right]);
  }

class Solution {
  List<int> rightSideView(TreeNode? root) {
    if (root == null) return []; 

    List<int> result = [];
    List<TreeNode> queue = [root]; 
    
    while (queue.isNotEmpty) {
      int levelSize = queue.length;
      for (int i = 0; i < levelSize; i++) {
        TreeNode currentNode = queue.removeAt(0);

        if (i == levelSize - 1) {
          result.add(currentNode.val);
        }

        if (currentNode.left != null) queue.add(currentNode.left!);
        if (currentNode.right != null) queue.add(currentNode.right!);
      }
    }
    
    return result;
    
  }
}