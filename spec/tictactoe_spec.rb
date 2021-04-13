require_relative "../lib/board.rb"
require_relative "../lib/player.rb"

describe Player do
     before do
          @player = Player.new
     end

     describe "string to integer" do
          it "takes user input and turns into an integer -1" do   
          expect(@player.user_input_to_i("5")).to eq(4)
     end
     end

     describe "validates user name input" do
          it"returns true if the user name meets the condition" do
          expect(@player.name_valid?('Sam')).to eq true
     end
     end
     
     describe'when nil is entered' do
          it 'should return false ' do
           expect(@player.name_valid?('')).to eq(nil)
     end
     end

     describe 'when less than 3 letters are entered' do
           it 'should return false ' do
          
          expect(@player.name_valid?('A')).to eq(nil)
     end
     end

end