class Board

  def initialize
    @rows = 6
    @columns = 6
    @board_array = []
    @check_values = [0, 1, -1]
  end

  #Getter function for rows
  def rows
    @rows
  end

  #Getter function for columns
  def columns
    @columns
  end

  #Creates a board N@rows x @columns
  def make_board
    rows.times do
      columns_array = []
      columns.times do
        columns_array << 0
      end
      @board_array << columns_array
    end
  end

  #Changes value at given input in the board
  def make_move(input)
    @board_array[input[0]][input[1]] = 99
  end

  #Getter function to show the current board
  def get_board
    @board_array
  end

  #Checks if user-input row/column is within the vertical bounds of the board
  #and then returns that position.
  def check_vertical(user_input)
    user_row = user_input[0]
    user_column = user_input[1]
    returned_array = []

    #Check if position above user-input is within bounds
    if user_row + 1 < 6
      returned_array << [user_row + 1, user_column]
    end

    #Check if position above user-input is within bounds
    if user_row - 1 >= 0
      returned_array << [user_row - 1, user_column]
    end

    returned_array
  end

  #Checks if user-input row/column is within the horizontal bounds of the board
  #and then returns that position
  def check_horizontal(user_input)
    user_row = user_input[0]
    user_column = user_input[1]
    returned_array = []

    #Checks if position to the left of user-input is within bounds
    if user_column - 1 >= 0
      returned_array << [user_row, user_column - 1]
    end

    #Checks if position to the right of user-input is within bounds
    if user_column + 1 < 6
      returned_array << [user_row, user_column + 1]
    end

    returned_array
  end

  #Checks if user-input row/column is within the diagonal bounds of the board
  #and then retruns that position
  def check_diagonal(user_input)
    user_row = user_input[0]
    user_column = user_input[1]
    returned_array = []

    #Checks if position to the top left of user-input is within bounds
    if user_row - 1 >= 0 && user_column - 1 >= 0
      returned_array << [user_row - 1, user_column - 1]
    end

    #Checks if position to the top right of user-input is within bounds
    if user_row + 1 < 6 && user_column - 1 >= 0
      returned_array << [user_row + 1, user_column - 1]
    end

    #Checks if position to the bottom left of user-input is within bounds
    if user_row - 1 >= 0 && user_column + 1 < 6
      returned_array << [user_row - 1, user_column + 1]
    end

    #Checks if position to the bottom right of user-input is within bounds
    if user_row + 1 < 6 && user_column + 1 >= 0
      returned_array << [user_row + 1, user_column + 1]
    end

    returned_array
  end
end
