#require 'pry'

module Players
  class Computer < Player

    def move(board) #returns a valid position for the computer to move => need #computer_move method
        # input = number.random(from 0 to 8) + 1
        input = (1 + rand(9)).to_s

        if board.valid_move?(input) == false
          move
        else
          return input #returns true for user input between 1-9 that is not taken
                       #!taken?(input) && input.to_i.between?(1, 9)
        end
    end

  end    
end
