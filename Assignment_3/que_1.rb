# Class for quick Sort
class QuickSort

    # Function for Partitioning the array and fixing the pivot element in correct order
    def partition(array, low, high)
        pivot = array[low]
        end_index = high
        for i in (end_index).downto(low+1)
            if array[i] > pivot
                temp = array[i]
                array[i] = array[end_index]
                array[end_index] = temp
                end_index -= 1
            end
        end
        temp = array[low]
        array[low] = array[end_index]
        array[end_index] = temp
        end_index 
    end

    # Function for Dividing the array before pivot element and after pivot element
    def quick_sort(array, low, high)
        if low < high
            index = partition(array, low, high)
            quick_sort(array, low, index - 1)
            quick_sort(array, index + 1, high)
        end
    end
end

array = []
print "Enter the number of elements in the array: "
number_of_elements = gets.chomp.to_i
puts "Enter Elements in the Array: "
number_of_elements.times{
    array << gets.chomp.to_i
}
puts "Array before sorting: #{array}"

# creating Object for QuickSort class
quick = QuickSort.new
quick.quick_sort(array, 0, number_of_elements-1)
puts "Array After sorting: #{array}"