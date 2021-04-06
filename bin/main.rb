#!/usr/bin/env ruby
# getting name of player 1
puts 'What is the name of Player 1?'
player1_name = gets.chomp.capitalize
puts
puts "Hello #{player1_name}, your symbol  is \"x\""
# getting name of player 2
puts
puts 'What is the name of player 2?'
player2_name = gets.chomp.capitalize
puts
puts "#{player2_name} your symbol  is \"o\""
puts
puts "#{player1_name} and #{player2_name}  get ready to play TicTac Game.."
puts
puts

board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
def display_board(board)
  puts '-------------'
  puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
  puts '-------------'
  puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
  puts '-------------'
  puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
  puts '-------------'
end

puts display_board(board)

def user_input_is_valid?(user_input)
  true if user_input.between?(0, 9)
end

def user_input_to_i(user_input)
  user_input.to_i - 1
end

game_over = false

until game_over

  puts "#{player1_name} it is your turn now, select your \"X\" position"
  user_input = gets.chomp
  user_input = user_input_to_i(user_input)

  until user_input_is_valid?(user_input) == true
    puts 'Enter an available board number'
    user_input = gets.chomp
    user_input = user_input_to_i(user_input)
    puts user_input_is_valid?(user_input)
  end

  board[user_input] = 'X'
  p display_board(board)

  puts "#{player2_name} it is your turn now, select your \"\" position"
  user_input = gets.chomp
  user_input = user_input_to_i(user_input)

  until user_input_is_valid?(user_input) == true
    puts 'Enter an available board number'
    user_input = gets.chomp
    user_input = user_input_to_i(user_input)
    puts user_input_is_valid?(user_input)
  end

  board[user_input] = 'O'
  display_board(board)

  game_over = true if board.none?(Integer)

end

puts 'This game is a tie'
