def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
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

  move(board, input, token)
  display_board(board)
end

def valid_move?(board, input)
  input.between?(0, 8) && position_taken?(board, input)
end

def position_taken?(board, index_number)
 board[index_number] == " " or board[index_number] == "" or board[index_number] == nil
end

def input_to_index(input)
  input = input.to_i
  input = input - 1
end

def move(board, user_input, character='X')
  board[user_input] = character
end
