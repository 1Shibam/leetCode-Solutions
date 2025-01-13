class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? reverseOddLevels(TreeNode? root) {
    if (root == null) return null;

    void reverseHelper(TreeNode? left, TreeNode? right, int level) {
      if (left == null || right == null) return;

      if (level % 2 == 1) {
        int temp = left.val;
        left.val = right.val;
        right.val = temp;
      }

      reverseHelper(left.left, right.right, level + 1);
      reverseHelper(left.right, right.left, level + 1);
    }

    reverseHelper(root.left, root.right, 1);
    return root;
  }
}
