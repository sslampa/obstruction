class User

  def initialize
    @user1 = nil
    @user2 = nil
    @input = nil
  end

  def get_input
    puts "Please enter one of the following:"
    puts "[row, column] - Coordinates to make move."
    puts "Row/Column must be between 0(inclusive) and 6(exclusive)"
    puts "'B' - To show current board state."
    puts "'M' - To show coordinates of all moves."
    puts "'T' - To show which player's turn it is."
    @input = gets.chomp
  end
end
