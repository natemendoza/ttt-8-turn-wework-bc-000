def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(input)
  input.to_i-1
end

def valid_move?(board, index)
  if board[index] == "X" || board[index] == "O"
    false
  elsif index > 9 || index < 0
    false
  else
    true
  end
end

def move(board, index, token = "X")
  board[index] = token
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  validation = valid_move?(board, index)
    if validation == false
      puts "Please enter 1-9:"
      input = gets.strip
    end
    move(board, index)
  display_board(board)
end