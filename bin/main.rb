#!/usr/bin/env ruby

def name_valid?(name)
  true if name.length >= 3 && !name.nil?
end

puts 'What is the name of Player 1?'
player1_name = gets.chomp.capitalize
until name_valid?(player1_name)
  puts 'Please enter a valid name, it should have at least 3 characters'
  player1_name = gets.chomp.capitalize
end
puts "Hello #{player1_name}, your symbol  is \"x\""
puts 'What is the name of player 2?'
player2_name = gets.chomp.capitalize
until name_valid?(player2_name)
  puts 'Please enter a valid name, it should have at least 3 characters'
  player2_name = gets.chomp.capitalize
end
puts "#{player2_name} your symbol  is \"o\""
puts "#{player1_name} and #{player2_name}  get ready to play TicTac Game.."

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
  true if user_input.between?(0, 9) && !user_input.nil?
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

  break if board.none?(Integer)

  puts "#{player2_name} it is your turn now, select your \"O\" position"
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

def winner(board, player1_name, player2_name)
  if board.count('X') > board.count('O')
    puts "#{player1_name}, you WIN the game"
  elsif board.count('X') < board.count('O')
    puts "#{player2_name}, you WIN the game"
  else
    puts 'This game is a tie'
  end
end

winner(board, player1_name, player2_name)
