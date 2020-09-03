module Players
  class Computer < Player

    #accepts a board and returns the move in the form of a 1-9 string
    def move(board)
      # binding.pry
      if board[4] == " "
        "5"
      elsif board[0] == " "
        "1"
      elsif board[6] == " "
        "7"
      elsif board[2] == " "
        "3"
      elsif board[8] == " "
        "9"
      elsif board[1] == " "
        "2"
      elsif board[5] == " "
        "6"
      elsif board[3] == " "
        "4"
      elsif board[7] == " "
        "8"
      end
      # computer_move = nil
      # if !board.taken?(5)
      #   computer_move = "5"
      # elsif !board.taken?(1)
      #   computer_move = "1"
      # elsif !board.taken?(7)
      #   computer_move = "7"
      # elsif board.taken?[3]
      #   computer_move = "3"
      # elsif board.taken?[9]
      #   computer_move = "9"
      # elsif board.taken?[2]
      #   computer_move = "2"
      # elsif board.taken?[6]
      #   computer_move = "6"
      # elsif board.taken?[4]
      #   computer_move = "4"
      # elsif board.taken?[8]
      #   computer_move = "8"
      # end

    end

  end    
end
