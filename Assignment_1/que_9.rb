# Function for Mean using Recursion 
def mean(array)
    if array.length == 1
        return array[0]
    else
        return (mean(array[1..-1]) + array[0])
    end
end

# Initializing the array
array = []
print "\nEnter number of elements for array: "
length_of_array = gets.chomp.to_i
print "\nEnter #{length_of_array} numbers separated by newline: "
length_of_array.times{
    array << gets.chomp.to_i
}
puts "\nThe entered numbers are : #{array}"
# Testing and printing the function
puts "Mean of the Array is #{mean(array)/n}"

# Fibonacci Number
def fibonacci(number)
    if number == 2 || number == 1
        1
    else
        fibonacci(number - 1) + fibonacci(number - 2)
    end
end

# 1 1 2 3 5 8 13 21 34 55
print "\nEnter the nth Fibonacci number you want: "
user_input_fibinacci = gets.chomp.to_i
# Testing and printing the function
puts "Fibonacci number at position #{n} is #{fibonacci(user_input_fibonacci)}"

# Factorial number function
def factorial(number)
    if number == 0
        1
    else
        number * factorial(number - 1)
    end
end

# Taking input for factorial
print "\nEnter the Number that you want factorial: "
user_input_factorial = gets.chomp.to_i
# Testing and printing the function
puts "Factorial of #{val} is #{factorial(user_input_factorial)}"