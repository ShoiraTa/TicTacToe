#!/usr/bin/env ruby
require_relative "../lib/player"
require_relative "../lib/board"
board=[1,2,3,4,5,6,7,8,9]
def display_board(board)
  puts '-------------'
  puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
  puts '-------------'
  puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
  puts '-------------'
  puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
  puts '-------------'
end

puts "Welcome to TicTacToe game"
puts "Welcome player 1"
player1 = Player.new
puts 'What is the name of Player 1?'
@player1_name = gets.chomp.capitalize
until player1.name_valid?(@player1_name)
  puts 'Please enter a valid name, it should have at least 3 characters'
  @player1_name = gets.chomp.capitalize
end
puts "Hello #{@player1_name}, your symbol  is \"X\""
puts
puts

puts "Welcome player 2"
player2 = Player.new
puts 'What is the name of player 2?'
@player2_name = gets.chomp.capitalize
until player2.name_valid?(@player2_name)
  puts 'Please enter a valid name, it should have at least 3 characters'
  player2_name = gets.chomp.capitalize
end
puts "#{@player2_name} your symbol  is \"O\""
puts "#{@player1_name} and #{@player2_name}  get ready to play TicTac Game.."



def user_input_to_i(user_input)
  user_input.to_i - 1
end


def current_player(board)
count = board.count("X") + board.count("O")
count%2 ==0?  @player1_name : @player2_name 
end

def current_symbol(current_player)
current_player == @player1_name ? "X" : "O"
end




the_board = Board.new
game_over =false


until game_over



display_board(board)


puts " #{current_player(board)} it is your turn now, select your #{current_symbol(current_player(board))} position"
player1_move = gets.chomp
player1_move = user_input_to_i(player1_move)

if player1.player_input_valid?(player1_move) && the_board.position_valid?(board, player1_move)
board[player1_move] = 'X'
end



p board
game_over = true if board.none?(Integer)
end




