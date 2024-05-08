# Function for matrix multiplication
def multiply_matrices(matrix_1, matrix_2)
    matrix_1_rowsize, matrix_1_colsize, matrix_2_colsize = matrix_1.length, matrix_1[0].length, matrix_2[0].length    
    resultant_matrix = Array.new(matrix_1_rowsize) { |i| Array.new(matrix_2_colsize, 0) }
    (0...matrix_1_rowsize).each do |row|
      (0...matrix_2_colsize).each do |column|
        (0...matrix_1_colsize).each do |iterable|
            resultant_matrix[row][column] += matrix_1[row][iterable]*matrix_2[iterable][column]  
        end 
      end 
    end 
    return resultant_matrix
end


# Taking inputs from the user
print "\nEnter the number of rows and columns for the first matrix: "
matrix1_rows, matrix1_cols = gets.chomp.to_i, gets.chomp.to_i
print "\nEnter the number of rows and columns for the second matrix: "
matrix2_rows, matrix2_cols = gets.chomp.to_i, gets.chomp.to_i

# Initilizing the matrixes with given rows and columns
matrix1 = Array.new(matrix1_rows) {|i| Array.new(matrix1_cols)}
matrix2 = Array.new(matrix2_rows) {|i| Array.new(matrix2_cols)}

# Filling the matrix with dynamic values
puts "Enter the elements of Matrix 1"
matrix1.each_with_index do |row, i|
    row.each_with_index do |col, j|
        number = gets.chomp.to_i
        matrix1[i][j] = number
    end
end

# Filling the matrix with dynamic values
puts "Enter the elements of Matrix 2"
matrix2.each_with_index do |row, i|
    row.each_with_index do |col, j|
        number = gets.chomp.to_i
        matrix2[i][j] = number
    end
end

# if matrix1 and matrix2 doesn't have same order we are not able to multiply it #
if matrix1_rows != matrix2_cols
    puts "The matrices cannot be multiplied."
else
    product = multiply_matrices(matrix1, matrix2)
    puts "The product of the two matrices is:"
    product.each do |row|
        print "\n"
        row.each do |num|
           print "#{num}\t"
        end
    end
end