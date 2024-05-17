# class for Bubble sort
class BubbleSort

    # Function to swap the elements
    def swap(array, iter1, iter2)
        temp = array[iter1]
        array[iter1] = array[iter2]
        array[iter2] = temp
    end

    # Function for Bubble Sort
    def bubble_sort(array)
        (0...array.length).each do |i|
            swapped = false
            (0...array.length - i - 1).each do |j|
                if array[j] > array[j+1]
                    swap(array, j, j+1)
                    swapped = true
                end
            end
            if !swapped
                break
            end
        end
    end
end



puts "Enter Elements in the Array: "
array = gets.chomp.split().map(&:to_i)
puts "Array before sorting: #{array}"
# Creating Object 
bubble = BubbleSort.new
bubble.bubble_sort(array)
print "\nAfter Sorting the Array: "
print array 