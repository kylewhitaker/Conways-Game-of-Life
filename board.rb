require 'minitest/autorun'

# Board Object
class Board

  attr_accessor :cell_board, :num_rows, :num_cols

  def board_name
    "Conway's Game of Life"
  end

  def initialize(x,y)
    @cell_board = Array.new(y){Array.new(x)}
    @num_rows = x
    @num_cols = y
  end

  def start
    @cell_board.each do |row|
      row.each do |cell|
        cell = true
      end
    end
  end

end


# Board Tests
class TestBoard < MiniTest::Test

  def test_board_name
    assert_equal "Conway's Game of Life", Board.new(3,3).board_name
  end

  def test_new_board
    board = Board.new(3,3)
    refute_nil board.cell_board
  end

  def test_board_rows
    board = Board.new(5,6)
    assert_equal 5, board.num_rows
  end

  def test_board_cols
    board = Board.new(5,6)
    assert_equal 6, board.num_cols
  end

  def test_board_start
    board = Board.new(3,4)
    assert board.at(1).at(2)
  end

end