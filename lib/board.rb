class Board
  include Enumerable
  attr_accessor :win_combination

  def initialize()
    @win_combination = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [2, 4, 6],
      [0, 4, 8]
    ]
  end

  def win?(board)
    @win_combination.any? do |combination|
      combination.all? { |idx| board[idx] == 'X' } || combination.all? { |idx| board[idx] == 'O' }
    end
  end

  def position_valid?(board, index)
    if board[index] == 'X' || board[index] == 'O'
      puts
      puts 'This position is taken, choose another position'
      puts
      false
    else
      true
    end
  end
end
