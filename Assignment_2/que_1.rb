# Creating an class to initialize the LinkedList
class Node
    attr_accessor :data, :next
    def initialize(value)
        @data = value
        @next = nil
    end
end

# Methods to performs in single linkedlist
class SingleLinkedList
    @@length = 0
    attr_reader :head  # head of the linked list

    # self. used for calling a private method from outside the
    def self.length
        return @@length
    end
    # Constructor to Initialize the head when head is created
    def initialize
        @head = nil
    end

    def Add(value)
        if @head.nil?
            @head = Node.new(value)
        else
            current = @head
            while current.next
                current = current.next
            end
            current.next = Node.new(value)
        end
    end

    def SizeOfLinkedList
        count = 0
        cur = @head
        while cur
            count += 1
            cur = cur.next
        end
        @@length = count
        SingleLinkedList.length
    end

    def PrintList
        current = @head
        while current
            if !current.next.nil?
                print "#{current.data}  - "
            else
                print "#{current.data} "
            end
            current = current.next
        end
        print "\n"
    end

    # Inserting at Begining
    def InsertAtBegin(value)
        node = Node.new(value)
        node.next = @head
        @head = node 
    end

    # Inserting at End
    def InsertAtend(value)
        node = Node.new(value)
        if @head.nil?
            @head = node
        else
            cur = @head
            while cur.next
                cur = cur.next
            end
            cur.next = node
        end   
    end

    # Inserting at particular position
    def InsertAtIndex(index, value)                     
        if index < 0 || index > @@length
            puts "\nInvalid Index!"
            return
        elsif index == 0
            InsertAtBegin(value)
        else
            new_node = Node.new(value)
            cur = @head
            i=1
            while i<index
                cur = cur.next
                i+=1
            end
            new_node.next = cur.next
            cur.next = new_node
        end
    end

    # Reverse of LinkedList
    def ReverseOfLinkindList
        prev_node = nil
        current_node = @head
        while current_node
            next_node = current_node.next
            current_node.next = prev_node
            prev_node = current_node
            current_node = next_node
        end
        @head = prev_node
    end
end

linked_list = SingleLinkedList.new
puts "enter the number of nodes that has to be created: "
number_of_nodes = gets.chomp.to_i
number_of_nodes.times{
    linked_list.Add(rand(1..20))
}
print "Printing the Created Linked list: "
linked_list.PrintList

# printing size of the Linkedlist
puts "\nLength of the LinkedList is: #{linked_list.SizeOfLinkedList}"

# Accessing the method to Insert at Begining
print "\nEnter the value you want to insert at begining: "
ins_beg = gets.chomp.to_i
linked_list.InsertAtBegin(ins_beg)
print "\nAfter Inserting at Begining: "
linked_list.PrintList
puts "\nLength of the LinkedList after Inserting: #{linked_list.SizeOfLinkedList}"

# Accessing the method to Insert at ending
print "\nEnter the value you want to insert at ending: "
ins_end = gets.chomp.to_i
linked_list.InsertAtend(ins_end)
print "\nAfter Inserting at End : "
linked_list.PrintList
puts "\nLength of the LinkedList after Inserting: #{linked_list.SizeOfLinkedList}"

# Accessing the method to Insert at particular Index
puts "\nEnter the index that you want to insert(0- Based): "
ins_ind = gets.chomp.to_i
print "\nEnter the value you want to insert at index: "
ins_val = gets.chomp.to_i
linked_list.InsertAtIndex(ins_ind, ins_val)
print "\nAfter Inserting at index #{ins_ind} : "
linked_list.PrintList
puts "\nLength of the LinkedList after Inserting: #{linked_list.SizeOfLinkedList}"

# Accessing the method to Reverse the Linked List
linked_list.ReverseOfLinkindList()
print "\nAfter Reversing the LinkedList: "
linked_list.PrintList