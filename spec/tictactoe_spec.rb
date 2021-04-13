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
     describe "user name validation" do
          describe "validates user name input" do
               it"returns true if the user name meets the condition" do
               expect(@player.name_valid?('Sam')).to eq true
          end
          end
          
          describe'when nil is entered' do
               it 'should return false ' do
               expect(@player.name_valid?('')).to eq(false)
          end
          end

          describe 'when less than 3 letters are entered' do
               it 'should return false ' do
               expect(@player.name_valid?('A')).to eq(false)
          end
          end
     end
     describe "player_input_valid?"do
          describe "when input is between 1-9"do
          it "returns true if player input is between 0-9" do
               expect(@player.player_input_valid?(2)).to eq(true)
          end
          
          end
          describe "when input is nil"
           it "returns false if player input is empty" do
               expect(@player.player_input_valid?(nil)).to eq(false)
          end

          describe "when input is grater than 9"
          it "returns false if player input is grater than 9" do
               expect(@player.player_input_valid?(11)).to eq(false)
          end
     end


    
end