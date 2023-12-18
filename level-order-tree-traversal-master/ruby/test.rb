def test_level_order_traversal
  # Test case 1: Tree with three nodes
  root1 = Node.new(1)
  root1.left = Node.new(2)
  root1.right = Node.new(3)
  expected_output1 = [[1], [2, 3]]
  actual_output1 = level_order_traversal(root1)
  puts "Test case 1: #{actual_output1 == expected_output1 ? "Passed" : "Failed"}"

  # Test case 2: Tree with multiple levels
  root2 = Node.new(10)
  root2.left = Node.new(20)
  root2.right = Node.new(30)
  root2.left.left = Node.new(9)
  root2.left.right = Node.new(22)
  expected_output2 = [[10], [20, 30], [9, 22]]
  actual_output2 = level_order_traversal(root2)
  puts "Test case 2: #{actual_output2 == expected_output2 ? "Passed" : "Failed"}"

  # Test case 3: Empty tree
  root3 = nil
  expected_output3 = []
  actual_output3 = level_order_traversal(root3)
  puts "Test case 3: #{actual_output3 == expected_output3 ? "Passed" : "Failed"}"

  # Test case 4: Tree with one node
  root4 = Node.new(5)
  expected_output4 = [[5]]
  actual_output4 = level_order_traversal(root4)
  puts "Test case 4: #{actual_output4 == expected_output4 ? "Passed" : "Failed"}"
end

test_level_order_traversal
