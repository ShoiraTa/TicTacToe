require_relative "../lib/board.rb"
require_relative "../lib/player.rb"


describe Player do
before do
     @player = Player.new
end
describe "string to integer" do
     it "takes user input and turns into integer -1" do   
     expect(@player.user_input_to_i("5")).to eq(4)
end
end
describe "validates user name input"
     it"returns true if the user name"

end