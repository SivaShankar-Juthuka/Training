# Define a class for the binary tree node
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left = nil
        @right = nil
    end
end
  
# Define a class for the binary search tree
class BST
    def initialize
        @root = nil
    end
  
    # Method to insert a value into the BST
    def insert(val)
        @root = insert_recursive(@root, val)
    end
  
    # Recursive method to insert a value into the BST
    def insert_recursive(node, val)
        return TreeNode.new(val) if node.nil?
        if val <= node.val
            node.left = insert_recursive(node.left, val)
        else
            node.right = insert_recursive(node.right, val)
        end
        node
    end
  
    # Method to find the Nth smallest element in the BST
    def find_nth_smallest(n)
        result = { count: 0, value: nil }
        inorder_traversal(@root, n, result)
        result[:value]
    end
  
    # Recursive inorder traversal to find the Nth smallest element
    def inorder_traversal(node, n, result)
        return if node.nil?
        inorder_traversal(node.left, n, result)
        result[:count] += 1
        result[:value] = node.val if result[:count] == n
        # If count equals N, we found the Nth smallest element, no need to traverse further
        return if result[:count] == n
        inorder_traversal(node.right, n, result)
    end
end
  
bst = BST.new
print "\n Enter the number of nodes to be inserted: "
number_of_nodes = gets.chomp.to_i
values = []
puts "Enter the elements"
number_of_nodes.times{
    values << gets.chomp.to_i
}
values.each { |val| bst.insert(val) }
print "\nEnter the Nth value to find in a tree: "
n = gets.chomp.to_i
nth_smallest = bst.find_nth_smallest(n)
print nth_smallest, "\n"
if nth_smallest.nil?
    puts "The tree does not have #{n} nodes."
else
    puts "The #{n}th smallest element in the BST is: #{nth_smallest}"
end
  