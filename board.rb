class Board

  def initialize
    @rows = 6
    @columns = 6
    @board_array = []
    @check_values = [0, 1, -1]
  end

  def rows
    @rows
  end

  def columns
    @columns
  end

  def make_board
    rows.times do
      columns_array = []
      columns.times do
        columns_array << 0
      end
      @board_array << columns_array
    end
  end

  def make_move(input)
    @board_array[input[0]][input[1]] = 99
  end

  def get_board
    @board_array
  end

  def check_vertical(user_input)
    user_row = user_input[0]
    user_column = user_input[1]

    if ((board_array[user_row + 1][user_column] == 0 && (user_row + 1 >= 0) && (user_row + 1 < 6)) && (board_array[user_row - 1][user_column] == 0 && (user_row - 1 >= 0) && (user_row - 1 < 6)))
      return [[user_row+1, user_column],[user_row-1, user_column]]
    else
      return false
    end
  end

end
