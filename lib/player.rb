class Player
  def user_input_to_i(user_input)
  user_input.to_i - 1
  end

  def name_valid?(name)
    true if !name.nil? && name.length >= 3 
  end

  def player_input_valid?(player_input)
    true if !player_input.nil? && player_input.between?(0, 9)
  end

def current_player(current_player,player1_name, player2_name )
current_player == player1_name ?  player2_name : player1_name
 end

 def current_symbol(current_player, player1_name)
  current_player == player1_name ? 'X' : 'O'
end

end
