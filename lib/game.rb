require 'pry'
class Game
  attr_accessor :board, :player_1, :player_2

  WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
    @board.display
  end

  def current_player
    @board.turn_count % 2 == 0 ? player_1 : player_2
  end

  def won?
    WIN_COMBINATIONS.detect do |win_combo|
      @board.cells[win_combo[0]] == @board.cells[win_combo[1]] &&
      @board.cells[win_combo[1]] == @board.cells[win_combo[2]]  &&
      @board.cells[win_combo[0]] != " "
    end
  end

  def draw?
  @board.full? && !won?
  end

  def over?
    won? || draw?
  end

  def winner
    if draw? == true; nil;
    else
    WIN_COMBINATIONS.detect do |win_combo|
      if (@board.cells[win_combo[0]]) == "X" && (@board.cells[win_combo[1]]) == "X" && (@board.cells[win_combo[2]]) == "X"
        return "X"
      elsif (@board.cells[win_combo[0]]) == "O" && (@board.cells[win_combo[1]]) == "O" && (@board.cells[win_combo[2]]) == "O"
        return "O"
      # else
      #   puts "Cat's Game!"
      else
        end
      end
    end
  end

  def turn
    input = current_player.move(input)
    if  !@board.valid_move?(input)
      puts "That's not a valid move. Please enter a number from 1-9:"
      turn
    elsif
      @board.update(input, current_player)
      @board.display
    end
end

  def play
      until over?
        turn
      end
        if draw?
          puts "Cat's Game!"
          puts ""
        elsif won?
          puts "Congratulations #{winner}!"
          puts ""
          puts "Let's play again!"
        end
        #start
  end

end