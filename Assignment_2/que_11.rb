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
  
    # Method to delete a node with a specific value from the BST
    def delete(val)
        @root = delete_recursive(@root, val)
    end
  
    # Recursive method to delete a node with a specific value from the BST
    def delete_recursive(node, val)
        return nil if node.nil?
        if val < node.val
            node.left = delete_recursive(node.left, val)
        elsif val > node.val
            node.right = delete_recursive(node.right, val)
        else
            # Node to be deleted found, handle different cases
            if node.left.nil?
                return node.right
            elsif node.right.nil?
                return node.left
            else
                successor = find_min(node.right)
                # Replace the value of the node to be deleted with the successor value
                node.val = successor.val
                # Delete the successor node from the right subtree
                node.right = delete_recursive(node.right, successor.val)
            end
        end
        node
    end
  
    # Method to find the minimum value node in a subtree
    def find_min(node)
        current = node
        while current.left
            current = current.left
        end
        current
    end
  
    # Method to check if the tree is balanced
    def balanced?
        return true if @root.nil?
    
        height_diff = height(@root.left) - height(@root.right)
        height_diff.abs <= 1
    end
  
    # Method to get the height of a node
    def height(node)
        return 0 if node.nil?
    
        [height(node.left), height(node.right)].max + 1
    end
  
    # Method to rebalance the tree
    def rebalance
        # If the tree is not balanced, perform rebalancing operations
        while !balanced?
            # If left subtree is taller
            if height(@root.left) > height(@root.right)
                # If left child's left subtree is taller, perform right rotation
                if height(@root.left.left) >= height(@root.left.right)
                    @root = right_rotate(@root)
                # If left child's right subtree is taller, perform left-right rotation
                else
                    @root.left = left_rotate(@root.left)
                    @root = right_rotate(@root)
                end
            # If right subtree is taller
            else
                # If right child's right subtree is taller, perform left rotation
                if height(@root.right.right) >= height(@root.right.left)
                    @root = left_rotate(@root)
                # If right child's left subtree is taller, perform right-left rotation
                else
                    @root.right = right_rotate(@root.right)
                    @root = left_rotate(@root)
                end
            end
        end
    end
  
    # Method to perform left rotation
    def left_rotate(node)
        new_root = node.right
        node.right = new_root.left
        new_root.left = node
        new_root
    end
  
    # Method to perform right rotation
    def right_rotate(node)
        new_root = node.left
        node.left = new_root.right
        new_root.right = node
        new_root
    end
  
    # Method to perform inorder traversal (for testing purposes)
    def inorder_traversal(node, result)
        return if node.nil?
        inorder_traversal(node.left, result)
        result << node.val
        inorder_traversal(node.right, result)
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
result = []
puts "BST after Inserting all values: "
bst.inorder_traversal(bst.instance_variable_get(:@root), result)
puts result.join(', ')
# Delete a node with value 
print "\nEnter value to be Deleted: "
delete_value = gets.chomp.to_i
if result.include?(delete_value)
    bst.delete(delete_value)
    puts "BST after deleting node with value #{delete_value}:"
else
    puts "Value doesn't present in the BST."
end  
result = []
bst.inorder_traversal(bst.instance_variable_get(:@root), result)
puts result.join(', ')
# Rebalance the tree if necessary
bst.rebalance
puts "BST after rebalancing:"
result = []
bst.inorder_traversal(bst.instance_variable_get(:@root), result)
puts result.join(', ')