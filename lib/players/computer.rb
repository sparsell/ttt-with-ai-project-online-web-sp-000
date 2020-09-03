#require 'pry'

module Players
  class Computer < Player

    #accepts a board and returns the move in the form of a 1-9 string
    def move(board)
      if board.cells[4] == " "
        "5"
      else 
      end
    end

  end    
end
