#!/usr/bin/env ruby
#getting name of player 1
puts "What is the name of Player 1?"
player1_name = gets.chomp.capitalize
puts 
puts "Hello #{player1_name}, your symbol  is \"x\""
#getting name of player 2
puts
puts "What is the name of player 2?"
player2_name = gets.chomp.capitalize
puts
puts "#{player2_name} your symbol  is \"o\""
puts
puts "#{player1_name} and #{player2_name}  get ready to play TicTac Game.."
puts
puts


board = [1,2,3,4,5,6,7,8,9]
def display_board (board)
  puts '-------------'
  puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
  puts '-------------'
  puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
   puts '-------------'
  puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
   puts '-------------'
end
