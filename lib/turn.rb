def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return "#{input}".to_i - 1
end

# code your #valid_move? method here
def valid_move? (board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above
def position_taken?(board, index)
  if (board [index] == " ")||(board [index] == "")||(board [index] == nil)
    return false
  else
    return true
  end
end

def move(board, index, value = "X")
  return board[index] = value
end

def turn(board)
  puts "Where would you like to go?"
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, value = "X")
      display_board(board)
    else
     puts "Please enter 1-9:"
     turn(board)
    end
end