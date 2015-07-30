require 'ship'
require 'board'

describe 'Features' do
  let(:board) { Board.new }
  let(:ship) { Ship.new(1) }  
  
  describe 'Board' do
    describe '#place' do
      it { expect(board).to respond_to(:place).with(3).argument }
      it 'ships on the board' do
        board.place(ship, "A", 1)
        expect(board.game_board[0][0]).to eq ship
      end
      it "raises error if out of bounds" do
        expect{board.place(ship,"K",11)}.to raise_error "Out of bounds!"
      end
      it "raises error if ship already exists at location" do
        board.place(ship, "A", 1)
        expect{board.place(ship,"A",1)}.to raise_error "Ship already at location!"
      end
    end
  end

  it { expect{board.fire("A",1)}.not_to raise_error }
  it "fires at location" do
    board.place(ship, "A", 1)
    board.fire("A",1)
    expects(ship.status).to eq "hit"   
  end

  it { expect(ship).to respond_to(:status) }

end