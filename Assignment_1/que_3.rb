# Checking if one is a subset of the other
def subset_of_array(array_1, array_2)
    if (array_2 - array_1).empty? && !(array_1 - array_2).empty?
        puts "\nArray-2 is a subset of Array-1."
    else
        puts "\n Array-2 is not subset of Array-1."  
    end
end


# Initializing the Arrays
array_1 = []
array_2 = []
print "\nEnter the number of elements in array1: "
length_of_array_1 = gets.chomp.to_i
print "\nEnter the number of elements in array2: "
length_of_array_2 = gets.chomp.to_i
print "\n"

# Taking input from user for array 1
puts "Enter elements for array-1: "
for i in 0...length_of_array_1
    array_1 << gets.chomp.to_i
end
# Taking input from user for array 2
puts "Enter elements for array-2: \n"
for i in 0...length_of_array_2
    array_2 << gets.chomp.to_i
end

subset_of_array(array_1, array_2)