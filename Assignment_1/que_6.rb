def compare_strings(string1, string2)
    # This function takes in two strings and compares them. It returns a boolean value indicating whether the strings are equal or not. 
    result = ""
    string1_length = string1.length
    string2_length = string2.length
    largest_length = [string1_length, string2_length].min
    if string1[0] != string2[0]
        return ""
    else
        for i in (0...largest_length)
            if string1[i] == string2[i]
                result += string1[i]
            else
                break
            end
        end
    end
    result
end

def longestcommonprefix(string_array)
    result = string_array[0]
    if string_array.empty?
        return ""
    else
        string_array[1..-1].each do |str|
            result = compare_strings(result, str)
            if result.empty?
                break
            end
        end
    end
    result
end

# Taking Input
puts "Enter 5 strings:"
string_array = []
5.times {
    string_array << gets.chomp
}

# Calling the Functions and Printing
result = longestcommonprefix(string_array)
if result.length
    puts "The Longest Common Prefix is: #{result}"
else
    puts "No Common Prefix"
end