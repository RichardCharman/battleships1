require 'ship'
require 'board'

describe 'Features' do
  board = Board.new
  ship = Ship.new(1)  
  
  describe 'Board' do
    
    describe '#place' do
      it { expect(board).to respond_to(:place).with(3).argument }
      it 'ships on the board' do
        board.place(ship, "A", 1)
        expect(board.game_board[0][0]).to eq ship
      end
    end
  
  end

end