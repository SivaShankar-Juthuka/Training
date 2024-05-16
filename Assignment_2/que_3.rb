# Initializing Stack and its methods
class Stack
    attr_accessor :size
    # Initializing the stack
    def initialize
      @elements = []
      @size = 0
    end
  
    # Method for pushing the elements into stack 
    def push(item)
      @elements.push(item)
      @size += 1
    end
  
    # Method for popping the elements from the stack
    def pop
      @elements.pop
      @size -= 1
    end
  
    # Method for checking weather the stack is empty or not
    def empty
      @elements.empty?
    end

    # Method to display the stack 
    def display
        puts "Stack: #{@elements}"
    end
  end
  
# Creating a new object of class Stack
stack = Stack.new
# adding elements to the stack using 'push'
print "Enter the number of elements that you want to push in to the stack: "
number_to_push = gets.chomp.to_i
puts "Enter the elements: "
number_to_push.times{
    num = gets.chomp.to_i
    stack.push(num)
}


# Accessing the method display after push opoerations
print "\nThe elements inserted are : "
stack.display

# Accessing the method to check if the stack is empty or not
if stack.empty == true
    puts "\n The stack is Empty."
else
    puts "\n The stack is Not Empty."
end

print "\nEnter the number of elements that you want to pop in to the stack: "
number_to_pop = gets.chomp.to_i
number_to_pop.times{
    result = stack.pop()
    if result != nil
        puts "\n Popped Element: #{result}"
    else
        puts "\n Unable to delete from an empty stack"
    end
}

# Accessing the method display after pop opoerations
puts "\nThe elements in stack after deletion."
stack.display()