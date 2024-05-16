# Initializing and Accessing the Double LinkedList
class Node
    attr_accessor :data, :next, :prev
    def initialize(value)
        @data = value
        @prev = nil
        @next = nil
    end
end


class DoubleLinkedList
    attr_reader :head, :tail
    @@length = 0

    def self.length
        @@length
    end

    def initialize
        @head = nil
        @tail = nil
        @@length = 0
    end

    # Size of the LinkedList
    def SizeOfLinkedList
        count = 0
        cur = @head
        while cur
            count += 1
            cur = cur.next
        end
        @@length = count
        DoubleLinkedList.length
    end

    # Appending Values to the LinkedList
    def append(value)
        if @head.nil?
          @head = Node.new(value)
          @tail = @head
        else
          new_node = Node.new(value)
          new_node.prev = @tail
          @tail.next = new_node
          @tail = new_node
        end
      end

    # Printing Double LinkedList
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

    # Inserting at the Begining
    def InsertAtBegin(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = @tail = new_node
        else
            new_node.next = @head
            @head.prev = new_node
            @head = new_node
        end
    end

    # Inserting at the Ending
    def InsertAtend(value)
        new_node = Node.new(value)
        temp = @head
        while temp.next
            temp = temp.next
        end
        temp.next = new_node
        new_node.prev = temp
        @tail = new_node
    end

    # Inserting at the index
    def InsertAtIndex(index, value)
        if index < 0 || index > @@length
            return false
        elsif index == 0
            InsertAtBegin(value)
        elsif index == @@length
            InsertAtend(value)
        else
            new_node = Node.new(value)
            i = 1
            curr = @head
            while i < index
                curr = curr.next
                i += 1
            end
            new_node.next = curr.next
            curr.next.prev = new_node
            curr.next = new_node
        end
        return true
    end

    # Reversing The LinkedList Means ->  Traversing backwards
    # def ReverseOfLinkindList
    #     current = @tail
    #     while current
    #         if !current.prev.nil?
    #             print "#{current.data} - "
    #         else
    #             print "#{current.data} "   
    #         end
    #         current = current.prev         
    #     end
    #     print "\n"
    # end     

    def ReverseOfLinkindList
        temp = nil
        current = @head
        while current != nil
          temp = current.prev
          current.prev = current.next
          current.next = temp
          current = current.prev
        end
        if temp != nil
          @head = temp.prev
        end
      end
end

# Creating Object to the LinkedList
linked_list = DoubleLinkedList.new
puts "enter the number of nodes that has to be created: "
number_of_nodes = gets.chomp.to_i
number_of_nodes.times{
    linked_list.append(rand(1..20))
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
if linked_list.InsertAtIndex(ins_ind, ins_val)
    print "\nAfter Inserting at index #{ins_ind} : "
    linked_list.PrintList
    puts "\nLength of the LinkedList after Inserting: #{linked_list.SizeOfLinkedList}"
else
    puts "\nIndex out of range"
end

# Accessing the method to Reverse the Linked List
linked_list.ReverseOfLinkindList()
print "\nAfter Reversing the LinkedList: "
linked_list.PrintList