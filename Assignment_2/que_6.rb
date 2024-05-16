# Queue Implementation usong LinkedList
class QueueNode
    attr_accessor :data, :next
    def initialize(data)
        @data = data
        @next = nil
    end
end

class Queue
    attr_reader :front, :size 

    def initialize
        @front = nil
        @size = 0
    end

    # Method to Insert elements in a queue
    def enqueue(value)
        node = QueueNode.new(value)
        if(@front == nil)
            @front = node
        else
            current = @front
            while !current.next.nil?
                current = current.next
            end
            current.next = node
        end
        @size += 1
    end

    # Method to delete an element from the the queue
    def dequeue
        if @front.nil?
            puts "Queue is Empty"
        else
            temp = @front
            @front = @front.next
            @size -= 1
            temp.data
        end
    end

    # Check weather Queue is empty or not
    def empty?
        @front == nil
    end

    # Get size of the Queue
    def size
        @size
    end

    # Method to show the elements in queue
    def display
        current = @front
        while !current.nil?
            print "#{current.data} "
            current = current.next
        end
        print("\n")
    end
end

# Creating the Object fro the Node
queue = Queue.new

# Adding the Elements into the Queue
print "Enter the number of elements that you want to push in to the queue: "
number_to_push = gets.chomp.to_i
puts "Enter the elements: "
number_to_push.times{
    num = gets.chomp.to_i
    queue.enqueue(num)
}

# Accessing the method display after push operations
print "\nThe elements inserted are : "
queue.display
print "\nSize of the queue is: #{queue.size}"

# Accessing the method to check if the stack is empty or not
if queue.empty?
    puts "\nThe queue is Empty."
else
    puts "\nThe queue is Not Empty."
end

print "\nEnter the number of elements that you want to pop in to the queue: "
number_to_pop = gets.chomp.to_i
number_to_pop.times{
    result = queue.dequeue()
    if result != nil
        puts "\n Popped Element: #{result}"
    else
        puts "\n Unable to delete from an empty queue"
    end
}

# Accessing the method display after pop opoerations
puts "\nThe elements in queue after deletion."
queue.display()
print "\nSize of the queue is: #{queue.size}"