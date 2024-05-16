<<<<<<< HEAD
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
  
    # Method to traverse the binary tree in preorder (Root -> Left -> Right)
    def preorder_traversal(node = @root)
        return if node.nil?
        print "#{node.value} "
        preorder_traversal(node.left)
        preorder_traversal(node.right)
    end

    # Method to traverse the binary tree in inorder (Left -> Root -> Right)
    def inorder_traversal(node = @root)
        return if node.nil?
        inorder_traversal(node.left)
        print "#{node.value} "
        inorder_traversal(node.right)
    end

    # Method to traverse the binary tree in postorder (Left -> Right -> Root)
    def postorder_traversal(node = @root)
        return if node.nil?
        postorder_traversal(node.left)
        postorder_traversal(node.right)
        print "#{node.value} "
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


# Inorder Traversal of a Tree
print "\nInorder Traversal of Binary Tree: "
binary_tree.inorder_traversal

# Preorder Traversal of a Tree
print "\nPreorder Traversal of Binary Tree: "
binary_tree.preorder_traversal

# Postorder Traversal of a Tree
print "\nPostorder Traversal of Binary Tree: "
=======
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
  
    # Method to traverse the binary tree in preorder (Root -> Left -> Right)
    def preorder_traversal(node = @root)
        return if node.nil?
        print "#{node.value} "
        preorder_traversal(node.left)
        preorder_traversal(node.right)
    end

    # Method to traverse the binary tree in inorder (Left -> Root -> Right)
    def inorder_traversal(node = @root)
        return if node.nil?
        inorder_traversal(node.left)
        print "#{node.value} "
        inorder_traversal(node.right)
    end

    # Method to traverse the binary tree in postorder (Left -> Right -> Root)
    def postorder_traversal(node = @root)
        return if node.nil?
        postorder_traversal(node.left)
        postorder_traversal(node.right)
        print "#{node.value} "
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


# Inorder Traversal of a Tree
print "\nInorder Traversal of Binary Tree: "
binary_tree.inorder_traversal

# Preorder Traversal of a Tree
print "\nPreorder Traversal of Binary Tree: "
binary_tree.preorder_traversal

# Postorder Traversal of a Tree
print "\nPostorder Traversal of Binary Tree: "
>>>>>>> 1a79a8c65d1f8d8e267d96efd118e54c2749a684
binary_tree.postorder_traversal