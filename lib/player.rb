class Player

def name_valid?(name)
  true if name.length >= 3 && !name.nil?
end

def player_input_valid?(player_input)
   if player_input.between?(0, 9) && !player_input.nil?
     return true
   else 

p"input a valid number"
return false
  
end
end
end