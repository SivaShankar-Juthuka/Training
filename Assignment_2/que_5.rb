<<<<<<< HEAD
# initializing the queue and its methods
class Queue
    # Initializing queue
    def initialize
        @queue = []
    end

    # Method for enqueue Operation in queue
    def enqueue(value)
        @queue << value
        # @queue.push(value)
    end

    # Method for Dequeue operation in queue
    def dequeue
        if @queue.nil?
            puts "Queue is empty"
            return nil
        else
            return @queue.shift
        end
    end

    # Method to check whether the queue is empty or not
    def empty
        return @queue.empty?
    end

    # Method to display the queue
    def display
        print @queue.join(" ")
    end
end

# creating an object to access the Queue data structure
queue = Queue.new

# adding elements to the queue using 'enqueue'
print "Enter the number of elements that you want to enqueue in to the queue: "
number_to_enqueue = gets.chomp.to_i
puts "Enter the elements: "
number_to_enqueue.times{
    num = gets.chomp.to_i
    queue.enqueue(num)
}

# Accessing the method display after enqueue opoerations
print "\nThe elements inserted are : "
queue.display

# Accessing the method to check if the queue is empty or not
if queue.empty == true
    puts "\nThe queue is Empty."
else
    puts "\nThe queue is Not Empty."
end

print "\n\nEnter the number of elements that you want to dequeue in to the queue: "
number_to_dequeue = gets.chomp.to_i
number_to_dequeue.times{
    result = queue.dequeue()
    if result != nil
        puts "\n Deleted Element: #{result}"
    else
        puts "\n Unable to delete from an empty queue"
    end
}

# Accessing the method display after dequeue opoerations
puts "\nThe elements in queue after deletion."
queue.display()
=======
# initializing the queue and its methods
class Queue
    # Initializing queue
    def initialize
        @queue = []
    end

    # Method for enqueue Operation in queue
    def enqueue(value)
        @queue << value
        # @queue.push(value)
    end

    # Method for Dequeue operation in queue
    def dequeue
        if @queue.nil?
            puts "Queue is empty"
            return nil
        else
            return @queue.shift
        end
    end

    # Method to check whether the queue is empty or not
    def empty
        return @queue.empty?
    end

    # Method to display the queue
    def display
        print @queue.join(" ")
    end
end

# creating an object to access the Queue data structure
queue = Queue.new

# adding elements to the queue using 'enqueue'
print "Enter the number of elements that you want to enqueue in to the queue: "
number_to_enqueue = gets.chomp.to_i
puts "Enter the elements: "
number_to_enqueue.times{
    num = gets.chomp.to_i
    queue.enqueue(num)
}


# Accessing the method display after enqueue opoerations
print "\nThe elements inserted are : "
queue.display

# Accessing the method to check if the queue is empty or not
if queue.empty == true
    puts "\nThe queue is Empty."
else
    puts "\nThe queue is Not Empty."
end

print "\n\nEnter the number of elements that you want to dequeue in to the queue: "
number_to_dequeue = gets.chomp.to_i
number_to_dequeue.times{
    result = queue.dequeue()
    if result != nil
        puts "\n Deleted Element: #{result}"
    else
        puts "\n Unable to delete from an empty queue"
    end
}

# Accessing the method display after dequeue opoerations
puts "\nThe elements in queue after deletion."
queue.display()
>>>>>>> 1a79a8c65d1f8d8e267d96efd118e54c2749a684
