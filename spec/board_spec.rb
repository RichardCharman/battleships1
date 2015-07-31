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

  describe "#fire" do
    it { is_expected.to respond_to(:fire).with(2).arguments}
    it "changes ship status" do
      ship = spy :ship
      subject.place(ship,"A",1)
      subject.fire("A",1)
      expect(ship).to have_received :hit
    end
    it "raises error if out of bounds" do 
      expect{ subject.fire("K",11) }.to raise_error 'Out of bounds!'
    end
    it "asks if the hit ship has been sunk" do
      ship = spy :ship
      subject.place(ship,"A",1)
      subject.fire("A",1)
      expect(ship).to have_received :sunk?
    end
    it "reports a ship that has been sunk" do
      allow(ship).to receive(:hit)
      allow(ship).to receive(:sunk?) { true }

      subject.place(ship,"A",1)
      expect(subject.fire("A",1)).to eq "You sunk my ship"
    end
  end
  
  it { is_expected.to respond_to :log }
  
  it 'logs hits' do
    allow(ship).to receive(:hit)
    allow(ship).to receive(:sunk?)
    subject.place(ship, "A", 1)
    subject.fire("A", 1)
    expect(subject.log[0][0]).to eq "hit"
  end
  
  it 'logs misses' do
    subject.fire("A", 1)
    expect(subject.log[0][0]).to eq "miss"
  end
end
