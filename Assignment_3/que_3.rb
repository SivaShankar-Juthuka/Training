# class for heap sort
class HeapSort
    attr_accessor :size

    def initialize(size)
        @size = size
    end
    
    def swap(array, iter1, iter2)
        temp = array[iter1]
        array[iter1] = array[iter2]
        array[iter2] = temp
    end

    # Function to Heapify the array
    def heapify(array, index)
        largest = index
        left = 2 * index
        right = 2 * index + 1

        # check if left child is larger than root
        if left < self.size and array[left] > array[largest]
            largest = left
        end

        # check if right child is larger than root
        if right < self.size and array[right] > array[largest]
            largest = right
        end
        
        # if root is not the largest, swap with the largest and heapify the affected sub-tree
        if largest!= index
            swap(array, index, largest)
            heapify(array, largest)
        end
    end

    # function to create the heap
    def heap_sort(array)
        # build max heap
        for i in (0..self.size).reverse_each do
            heapify(array, i)
        end
        for i in (self.size - 1).downto(1)
            swap(array, 0, i)
            self.size -= 1
            heapify(array, 0)
        end
    end

end


# Array Input
array = []
puts "Enter Elements in the Array: "
array = gets.chomp.split().map(&:to_i)
puts "Array before sorting: #{array}"

# creating the object for Heap Sort function
heap = HeapSort.new(array.length)
heap.heap_sort(array)
puts "Array after sorting: #{array}"