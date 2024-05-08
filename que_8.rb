=begin
Write a Program to find the length of the longest sub-array in an array with a sum equal to 0. 
Error should be thrown if the same is not possible. Please take Max Array Length to be 25
Input: 15, -2, 2, -8, 1, 7, 10, 23
Output: 5
Explanation: The longest sub-array with elements summing up-to 0 is [-2, 2, -8, 1, 7]
=end

# function for longest sub-array in an array with a sum equal to 0
def longest_subarray(arr)
    n = arr.length
    res = []
    s = 0
    for i in 0...n do
        s = arr[i]
        for j in i+1...n do
            s += arr[j]
            if s == 0
                res << (j-i)+1
            end
        end
    end
    res.max
end
# Initializing the array
arr = []
print "\nEnter number of elements for array: "
n = gets.chomp.to_i
print "\nEnter #{n} numbers separated by newline: "
n.times{
    arr << gets.chomp.to_i
}
puts "\nThe entered numbers are : #{arr}"

if n > 25
    print "Array size limit exceeded"
else
    print "Longest subarray sum equal to 0 is #{longest_subarray(arr)}"
end
