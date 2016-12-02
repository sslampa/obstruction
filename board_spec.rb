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

  it "Can check vertical spaces around user's cell" do
    my_board = Board.new
    my_board.make_board
    expect{my_board.make_move(0,1)}.to change(my_board.get_board).from [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]].to[[0,99,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]]
    expect(my_board.check_vertical([1,1]))
  end

end
