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
    it "raises error if out of bounds" do 
    	expect{ subject.place(ship,"K",11) }.to raise_error 'Out of bounds!'
    end
    it "raises error if ship already at location" do
    	subject.place(ship,"A",1)
    	expect{subject.place(ship,"A", 1)}.to raise_error "Ship already at location!"
    end
  end
  
  it { is_expected.to respond_to(:fire).with(2).arguments}
  

end
