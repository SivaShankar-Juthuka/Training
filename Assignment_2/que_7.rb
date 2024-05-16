class TreeNode
    attr_accessor :value, :left, :right

    def initialize(value)
        @value = value
        @left = nil
        @right = nil
    end
end

class BinaryTree
    attr_accessor :root
  
    def initialize(value)
      @root = TreeNode.new(value)
    end
  
    def insert(value)
      @root = insert_recursive(@root, value)
    end
  
    def insert_recursive(node, value)
      return TreeNode.new(value) if node.nil?
  
      if value < node.value
        node.left = insert_recursive(node.left, value)
      elsif value > node.value
        node.right = insert_recursive(node.right, value)
      end
      node
    end
  
    # Method to traverse the binary tree in inorder (Left -> Root -> Right)
    def inorder_traversal(node = @root)
      return if node.nil?
  
      inorder_traversal(node.left)
      print "#{node.value} "
      inorder_traversal(node.right)
    end

    def search(target)
        return false if @root.nil?
        search_recursively(@root, target)
    end

    # Method to Mirror the Binary Tree
    def mirror(node = @root)
        return if node.nil?
        temp = node
        mirror(node.left)
        mirror(node.right)
        node.left, node.right = node.right, node.left
    end

    private
    def search_recursively(node, target)
        return true if node.value == target
        if target < node.value && !node.left.nil?
            search_recursively(node.left, target)
        elsif target > node.value && !node.right.nil?
            search_recursively(node.right, target)
        else
            false
        end
    end
end
  

# Example usage:
print "\nEnter the root value: "
root_val = gets.chomp.to_i
binary_tree = BinaryTree.new(root_val)
print "Enter the Number of nodes to insert: "
number = gets.chomp.to_i
print "\nEnter the elements: \n"
number.times{
    num = gets.chomp.to_i
    # Inserting values into the Binary Tree
    binary_tree.insert(num)
}

# Accessing the method to search
print "\n\nEnter a number to search: "
search_element = gets.chomp.to_i
result = binary_tree.search(search_element)
if result 
    puts "#{search_element} is present"
else
    puts "#{search_element} is not present"
end

# Inorder Traversal of a Tree
binary_tree.inorder_traversal

# Mirror the Binary Tree
binary_tree.mirror()
# Printing the mirrored tree
puts("\nThe mirrored tree is :")
binary_tree.inorder_traversal