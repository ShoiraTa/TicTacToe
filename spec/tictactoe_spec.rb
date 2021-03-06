require_relative '../lib/board'
require_relative '../lib/player'

describe Player do
  before do
    @player = Player.new
  end

  describe 'string to integer' do
    it 'takes user input and turns into an integer -1' do
      expect(@player.user_input_to_i('5')).to eq(4)
    end
  end
  describe 'user name validation' do
    describe 'validates user name input' do
      it 'returns true if the user name meets the condition' do
        expect(@player.name_valid?('Sam')).to eq true
      end
    end

    describe 'when nil is entered' do
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
  describe 'player_input_valid?' do
    describe 'when input is between 1-9' do
      it 'returns true if player input is between 0-9' do
        expect(@player.player_input_valid?(2)).to eq(true)
      end
    end
    describe 'when input is nil'
    it 'returns false if player input is empty' do
      expect(@player.player_input_valid?(nil)).to eq(false)
    end

    describe 'when input is grater than 9'
    it 'returns false if player input is grater than 9' do
      expect(@player.player_input_valid?(11)).to eq(false)
    end
  end
  describe 'Player change' do
    describe 'when current player name is equal to player one name' do
      it 'should return player two name' do
        current_player = 'Sam'
        player1_name = 'Sam'
        player2_name = 'Kim'
        expect(@player.current_player(current_player, player1_name, player2_name)).to eq player2_name
      end
    end

    describe 'when current player name is equal to player two name' do
      it 'should return player one name' do
        current_player = 'Kim'
        player1_name = 'Sam'
        player2_name = 'Kim'
        expect(@player.current_player(current_player, player1_name, player2_name)).to eq player1_name
      end
    end
  end

  describe 'Symbol change' do
    describe 'when current player is player one' do
      it "should return 'X' as the symbol" do
        current_player = 'Kim'
        player1_name = 'Kim'
        expect(@player.current_symbol(current_player, player1_name)).to eq('X')
      end
    end

    describe 'when current player is player two' do
      it "should return 'O' as the symbol" do
        current_player = 'Kim'
        player1_name = 'Rome'
        expect(@player.current_symbol(current_player, player1_name)).to eq('O')
      end
    end
  end
end
describe Board do
  before do
    @board = Board.new
  end
  describe 'position_valid?' do
    describe ' when position on the board is not taken' do
      it 'returns true if the index position on the board is not taken with X or O' do
        expect(@board.position_valid?([1, 2, 3], 0)).to eq true
      end
    end
    describe ' when position on the board is  taken' do
      it 'returns false if the index position on the board is taken with X or O' do
        expect(@board.position_valid?(['X', 2, 3], 0)).to eq false
      end
    end
  end
  describe 'Win?' do
    describe 'when win combination' do
      it 'returns true if any win combination is there' do
        expect(@board.win?(['X', 'X', 'X', 4, 5, 6, 7, 8, 9])).to eq true
      end
    end
    describe 'when win combination is false' do
      it 'returns false if  there is no any win combination' do
        expect(@board.win?([1, 2, 3, 4, 5, 6, 7, 8, 9])).to eq false
      end
    end
  end
end
