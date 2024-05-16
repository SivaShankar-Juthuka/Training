# Recusrsive Function for string Reversal
def string_reversal_recursion(str)
    #  This function takes a string as input and returns the reversed version of it using recursion.
    if str.length == 0
        return ""
    else
        return string_reversal_recursion(str[1..str.length]) + str[0]
    end
end

# Iteration Function for String Reversal
def string_reversa_iteration(str)
    #  This function takes a string as input and returns the reversed version of it using Iteration.
    reverse_string = ""
    (0...str.length).reverse_each do |i|
        reverse_string += str[i]
    end
    reverse_string
end

# Taking the Input 
puts "Enter a String:"
user_input = gets.chomp
# Calling the Function to check for Iteration approach
puts "String Reverse using Iteration: #{string_reversa_iteration(user_input)}"
# Calling the Function to check for Recursive approach
puts "String Reverse using Recursion: #{string_reversal_recursion(user_input)}"