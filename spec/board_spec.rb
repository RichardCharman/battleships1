require 'board'

describe Board do
  let(:ship) { double :ship }

  describe '#place' do
    it { is_expected.to respond_to(:place).with(3).argument }
    it { is_expected.to respond_to(:game_board) }
    it 'ship on board' do
      subject.place(ship, "A", 1)
      expect(subject.game_board[0][0]).to eq ship
    end
  end
#  it { is_expected.to respond_to :table }

#  describe "#place" do
#    let(:out_of_bounds_ship) { Ship.new("A1", 3, "N") } # need to use a Double
#    let(:ship) { Ship.new("A1", 1, "N") } # need to use a Double

#    it 'raise an error if outside of board constraint' do
#       expect{ subject.place out_of_bounds_ship }.to raise_error 'Out of bounds'
#    end

#    it 'raise an error if ship overlap' do
#      subject.place ship
#      expect{ subject.place ship }.to raise_error 'occupied'
#    end
#  end
end
