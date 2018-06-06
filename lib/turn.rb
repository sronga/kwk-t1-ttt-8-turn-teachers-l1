board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end

def move(array,index,value="X")
  array[index] = value
end

def position_taken?(board, index)
    if board[index] == " "
      false
    elsif board[index] == ""
      false
    elsif board[index] == nil
      false
    elsif board[index] == "X"
      true
    elsif board[index] == "O"
      true
    end
end

def valid_move?(board, index)
if position_taken?(board, index) == true
    false
 elsif position_taken?(board, index) == false
   (
    if index <= 8 && index >= 0
      true
    else
      false
    end
    )
  end
end