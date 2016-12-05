require 'rspec'
require_relative 'board'

describe "Board" do

  it "Can be made" do
    expect{Board.new}.to_not raise_error
  end

  it "Has 6 columns and 6 rows" do
    my_board = Board.new
    expect(my_board.columns).to eq 6
    expect(my_board.rows).to eq 6
  end

  it "Is an array of 6 arrays of length 6" do
    my_board = Board.new
    my_board.make_board
    expect(my_board.get_board).to be_a Array
    expect(my_board.get_board).to eq [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
  end

  it "Can check vertical spaces around user-input and return those values" do
    my_board = Board.new
    my_board.make_board
    expect(my_board.check_vertical([0, 0])).to eq [[1, 0]]
    expect(my_board.check_vertical([5, 0])).to eq [[4, 0]]
    expect(my_board.check_vertical([3, 3])).to eq [[4, 3], [2, 3]]
  end

  it "Can check horizontal spaces around user-input and return those values" do
    my_board = Board.new
    my_board.make_board
    expect(my_board.check_horizontal([0, 0])).to eq [[0, 1]]
    expect(my_board.check_horizontal([4, 5])).to eq [[4, 4]]
    expect(my_board.check_horizontal([3, 3])).to eq [[3, 2], [3, 4]]
  end

  it "Can check diagonal spaces around user-input and return those values" do
    my_board = Board.new
    my_board.make_board
    expect(my_board.check_diagonal([0, 0])).to eq [[1, 1]]
    expect(my_board.check_diagonal([5, 5])).to eq [[4, 4]]
    expect(my_board.check_diagonal([3, 3])).to eq [[2, 2], [4, 2], [2, 4], [4, 4]]
  end

  it "Can create a combined array of all blocked positions" do
    my_board = Board.new
    my_board.make_board
    expect(my_board.update_board([0, 0])).to eq [[1, 0], [0, 1], [1, 1]]
  end

  it "Can update board based on combined array" do
    my_board = Board.new
    my_board.make_board
    my_board.update_board([0,0])
    # expect{my_board.update_board([0, 0])}.to change{my_board.get_board}
    #   .from([[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]].to_s)
    #   .to([[0,99,0,0,0,0],[99,99,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]].to_s)
    expect(my_board.get_board).to eq [[0,99,0,0,0,0],[99,99,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
  end

end
