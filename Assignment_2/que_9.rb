<<<<<<< HEAD
# Define a class to solve the N-Queens problem
class NQueensSolver
    # Initialize the solver with the board size
    def initialize(board_size)
      @board_size = board_size
      @solutions = [] # Array to store all valid solutions
    end
  
    # Method to solve the N-Queens problem
    def solve
      solve_queens([], 0) # Start with an empty solution and the first row
      @solutions # Return all valid solutions
    end
  
    private
  
    # Recursive method to find valid queen placements
    def solve_queens(current_solution, row)
      # If we reached the end of the board, add the solution to the list of valid solutions
      if row == @board_size
        @solutions << current_solution.dup
        return
      end
  
      # Try placing a queen in each column of the current row
      @board_size.times do |col|
        # Check if it's safe to place a queen in this position
        if safe_to_place_queen?(current_solution, row, col)
          # If it's safe, add this position to the current solution and move to the next row
          current_solution << [row, col]
          solve_queens(current_solution, row + 1)
          current_solution.pop # Backtrack: remove the last position before trying the next column
        end
      end
    end
  
    # Method to check if it's safe to place a queen in a certain position
    def safe_to_place_queen?(current_solution, row, col)
      # Iterate through each queen in the current solution
      current_solution.each do |queen_row, queen_col|
        # Check if the queen is in the same column or diagonal as the position we're considering
        return false if queen_col == col ||
                        (queen_row - row).abs == (queen_col - col).abs
      end
      true # If no conflicts were found, it's safe to place a queen in this position
    end
  end
  
  # Get the size of the chessboard from the user
  print "Enter the size of the chessboard (minimum 4): "
  board_size = gets.chomp.to_i
  
  # Check if the board size is valid (at least 4)
  if board_size < 4
    puts "Board size should be at least 4."
  else
    # Create a solver instance with the given board size
    solver = NQueensSolver.new(board_size)
  
    # Find all valid solutions to the N-Queens problem
    solutions = solver.solve
  
    # Print the indexes of the queens for each valid solution
    solutions.each_with_index do |solution, i|
      puts "Solution #{i + 1}: #{solution}"
    end
  end
=======
# Define a class to solve the N-Queens problem
class NQueensSolver
    # Initialize the solver with the board size
    def initialize(board_size)
      @board_size = board_size
      @solutions = [] # Array to store all valid solutions
    end
  
    # Method to solve the N-Queens problem
    def solve
      solve_queens([], 0) # Start with an empty solution and the first row
      @solutions # Return all valid solutions
    end
  
    private
  
    # Recursive method to find valid queen placements
    def solve_queens(current_solution, row)
      # If we reached the end of the board, add the solution to the list of valid solutions
      if row == @board_size
        @solutions << current_solution.dup
        return
      end
  
      # Try placing a queen in each column of the current row
      @board_size.times do |col|
        # Check if it's safe to place a queen in this position
        if safe_to_place_queen?(current_solution, row, col)
          # If it's safe, add this position to the current solution and move to the next row
          current_solution << [row, col]
          solve_queens(current_solution, row + 1)
          current_solution.pop # Backtrack: remove the last position before trying the next column
        end
      end
    end
  
    # Method to check if it's safe to place a queen in a certain position
    def safe_to_place_queen?(current_solution, row, col)
      # Iterate through each queen in the current solution
      current_solution.each do |queen_row, queen_col|
        # Check if the queen is in the same column or diagonal as the position we're considering
        return false if queen_col == col ||
                        (queen_row - row).abs == (queen_col - col).abs
      end
      true # If no conflicts were found, it's safe to place a queen in this position
    end
  end
  
  # Get the size of the chessboard from the user
  print "Enter the size of the chessboard (minimum 4): "
  board_size = gets.chomp.to_i
  
  # Check if the board size is valid (at least 4)
  if board_size < 4
    puts "Board size should be at least 4."
  else
    # Create a solver instance with the given board size
    solver = NQueensSolver.new(board_size)
  
    # Find all valid solutions to the N-Queens problem
    solutions = solver.solve
  
    # Print the indexes of the queens for each valid solution
    solutions.each_with_index do |solution, i|
      puts "Solution #{i + 1}: #{solution}"
    end
  end
>>>>>>> 1a79a8c65d1f8d8e267d96efd118e54c2749a684
  