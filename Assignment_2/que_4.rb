class StackNode
    attr_accessor :data, :next

    def initialize(data)
        @data = data
        @next = nil
    end
end  

class Stack
    attr_accessor :top, :size
    # Initializing the stack
    def initialize
        @top = nil
        @size = 0
    end
  
    # Pushing the element into the stack
    def push(x)    
        element = StackNode.new(x)
        element.next = @top
        @top = element
        puts "Element pushed"
        @size += 1
    end
  
    # Removing an element from the stack
    def pop
        if @top.nil?
            return -1
        end
        top_data = @top.data
        temp = @top
        @top = @top.next
        temp = nil
        @size -= 1
        top_data
    end

    # Checking the Size of the size
    def size
        @size
    end
  
    # Checking whether the stack is empty
    def empty?
        @top.nil?
    end
  
    # Getting the Top elements of the stack
    def peek
        if @top.nil?
            return -1
        end
        @top.data
    end

    # Printing the stack
    def display
        current = @top
        while !current.nil?
            print "#{current.data} "
            current = current.next
        end
        print("\n")
    end 
end

# Creating the Object 
stack = Stack.new

# adding elements to the stack using 'push'
print "Enter the number of elements that you want to push in to the stack: "
number_to_push = gets.chomp.to_i
puts "Enter the elements: "
number_to_push.times{
    num = gets.chomp.to_i
    stack.push(num)
}

# Accessing the method display after push operations
print "\nThe elements inserted are : "
stack.display
print "\nSize of the Stack is: #{stack.size}"

# Accessing the method to check if the stack is empty or not
if stack.empty?
    puts "\nThe stack is Empty."
else
    puts "\nThe stack is Not Empty."
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
print "\nSize of the Stack is: #{stack.size}"