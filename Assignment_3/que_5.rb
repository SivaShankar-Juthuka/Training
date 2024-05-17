# class for Insertion Sort
class InsertionSort

    
    # function for insertion sort insertion sort 
    def insertion(array)
        for i in 1...array.length
            key = array[i]
            j = i - 1
            while j >= 0 and key < array[j]
                array[j + 1] = array[j]
                j -= 1
            end
            array[j + 1] = key
        end
    end
end

# Array inputs 
puts "Enter Elements in the Array: "
array = gets.chomp.split().map(&:to_i)
puts "Array before sorting: #{array}"

# Creating the object for Insertion
insert = InsertionSort.new
insert.insertion(array)
puts "Array After sorting: #{array}"