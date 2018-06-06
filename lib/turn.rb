board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(array,index,token="X")
  array[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  token = 'X'

	until valid_move?(board, input)
    input = gets.strip
    input = input_to_index(input)
  end

  if valid_move?(board, index)
      move(board, index)
  end
display_board(board)
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
index.is_a?(Integer) && index.between?(0,8) && !position_taken?(board, index)
end


puts "Welcome to Tic Tac Toe!"
display_board(board)
#turn(board)
