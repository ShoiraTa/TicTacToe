class Player
  def name_valid?(name)
    true if  !name.nil? && name.length >= 3
  end

  def player_input_valid?(player_input)
    true if  !player_input.nil? &&  player_input.between?(0, 9) 
  end
end
