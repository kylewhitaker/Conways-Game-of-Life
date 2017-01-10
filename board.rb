require 'minitest/autorun'

# Board Object
class Board

  attr_accessor :cells, :rows, :cols

  def board_name
    "Conway's Game of Life"
  end

  def initialize(x,y)
    @cells = Array.new(y){Array.new(x)}
    @rows = x
    @cols = y
  end

  def set_all_cells_alive
    for x in 0...@rows
      for y in 0...@cols
        @cells[x][y] = true
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
    refute_nil board.cells
  end

  def test_board_rows
    board = Board.new(5,6)
    assert_equal 5, board.rows
  end

  def test_board_cols
    board = Board.new(5,6)
    assert_equal 6, board.cols
  end

  def test_board_set_all_cells_alive
    board = Board.new(3,4)
    board.set_all_cells_alive
    assert board.cells[1][2]
  end

end