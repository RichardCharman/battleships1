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
  
    describe "#fire" do
      it { expect{board.fire("A",1)}.not_to raise_error }
      it "at location" do
        board.place(ship, "A", 1)
        board.fire("A",1)
        expect(ship.status).to eq "hit"   
      end
      it "raises error if out of bounds" do
        expect{board.fire("K",11)}.to raise_error "Out of bounds!"
      end
      it "reports a sunken ship" do
        board.place(ship, "A", 1)
        expect(board.fire("A",1)).to eq "You sunk my ship"   
      end
    end
    it 'logs hits' do
      board.place(ship, "A", 1)
      board.fire("A", 1)
      expect(board.log[0][0]).to eq "hit"
    end
    
    it 'logs misses' do
      board.fire("B", 2)
      expect(board.log[1][1]).to eq "miss"      
    end
  end

  describe "Ship" do
    it { expect(ship).to respond_to(:status) }
    it { expect(ship).to respond_to(:sunk?) }
  end
  


end