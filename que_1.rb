def is_valid(expression)
    # checking weather expression contains alphabets or not
    if !expression..match?(/[A-Za-z]/)
        return false
    end
    len = expression.length
    if len % 2 != 0
        return false
    else
        result = []
        if ["}", "]", ")"].include?(expression[0]) || ["{", "[", "("].include?(expression[len - 1])
            return false
        end
        expression.each_char do |iterable|
            if iterable == '(' || iterable == '[' || iterable == '{'
                result.push(iterable)
            else
                if (iterable == '}' && !result.empty? && result[-1] == '{')
                    result.pop()
                elsif (iterable == ']' && !result.empty? && result[-1] == '[')
                    result.pop()
                elsif (iterable == ')' && !result.empty? && result[-1] == '(')
                    result.pop()
                elsif (["}", "]", ")"].include?(x) && !result.empty?)
                    return false
                elsif (["}", "]", ")"].include?(x) && result.empty?)
                    return false
                end
            end
        end
        if result.empty?
            return true
        else
            return false
        end
    end
end



puts "Enter the Expression: "
input = gets.chomp
if is_valid(input)
    puts "Valid"
else
    puts "Invalid"
end