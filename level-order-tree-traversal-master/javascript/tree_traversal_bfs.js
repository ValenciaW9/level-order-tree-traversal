//Recursive javascript program for level 
//order traveral of binary Tree


//Class containing left and right child of current
//node and key value
class Node {
  constructor(value, left = null, right = null) {
    this.value = value;
    this.left = left;
    this.right = right;
  }
}

function level_order_traversal(root) {
  let levels = [];
  if (!root) {
    return levels;
  }

  let queue = [root];
  while (queue.length) {
    let queueLength = queue.length;
    let level = [];
    for (let i = 0; i < queueLength; i++) {
      const node = queue.shift();

      if (node.left) {
        queue.push(node.left);
      }
      if (node.right) {
        queue.push(node.right);
      }
      level.push(node.value);
    }
    levels.push(level);
  }
  return levels;
}

if (require.main === module) {
  let root = new Node(1, new Node(2), new Node(3));
  // add your own tests in here
  console.log("Expecting: [[1], [2, 3]]");
  console.log(level_order_traversal(root));

  console.log("");

  root = new Node(10, new Node(20, new Node(9), new Node(22)), new Node(30));

  console.log("Expecting: [[10], [20, 30], [9, 22]]");
  console.log(level_order_traversal(root));
}

module.exports = {
  Node,
  level_order_traversal
};