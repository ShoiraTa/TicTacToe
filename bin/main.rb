#!/usr/bin/env ruby
require_relative "../lib/player"
require_relative "../lib/board"

puts "Welcome to TicTacToe game"
puts "Welcome player 1"
player1 = Player.new
puts 'What is the name of Player 1?'
player1_name = gets.chomp.capitalize
until player1.name_valid?(player1_name)
  puts 'Please enter a valid name, it should have at least 3 characters'
  player1_name = gets.chomp.capitalize
end
puts "Hello #{player1_name}, your symbol  is \"X\""
puts
puts

puts "Welcome player 2"
player2 = Player.new
puts 'What is the name of player 2?'
player2_name = gets.chomp.capitalize
until player2.name_valid?(player2_name)
  puts 'Please enter a valid name, it should have at least 3 characters'
  player2_name = gets.chomp.capitalize
end
puts "#{player2_name} your symbol  is \"O\""
puts "#{player1_name} and #{player2_name}  get ready to play TicTac Game.."


board = Board.new() 
board.display_board([1, 2, 3, 4, 5, 6, 7, 8, 9])
puts " #{player1_name} it is your turn now, select your \"X\" position"
player1






# def user_input_to_i(user_input)
#   user_input.to_i - 1
# end

# game_over = false

# until game_over

#  
#   user_input = gets.chomp
#   user_input = user_input_to_i(user_input)
#  puts "#{player1} it is your turn now, select your \"X\" position"
#   until user_input_is_valid?(user_input) == true
#     puts 'Enter an available board number'
#     user_input = gets.chomp
#     user_input = user_input_to_i(user_input)
#     puts user_input_is_valid?(user_input)
#   end

#   board[user_input] = 'X'
#   p display_board(board)

#   break if board.none?(Integer)

#   puts "#{player2} it is your turn now, select your \"O\" position"
#   user_input = gets.chomp
#   user_input = user_input_to_i(user_input)

#   until user_input_is_valid?(user_input) == true
#     puts 'Enter an available board number'
#     user_input = gets.chomp
#     user_input = user_input_to_i(user_input)
#     puts user_input_is_valid?(user_input)
#   end

#   board[user_input] = 'O'
#   display_board(board)

#   game_over = true if board.none?(Integer)

# end

# def winner(board, player1, player2)
#   if board.count('X') > board.count('O')
#     puts "#{player1}, you WIN the game"
#   elsif board.count('X') < board.count('O')
#     puts "#{player2}, you WIN the game"
#   else
#     puts 'This game is a tie'
#   end
# end

# winner(board, player1, player2)
