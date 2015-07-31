require 'ship'

describe Ship do
	let(:subject) {Ship.new(1)}


  it 'initializes with a size' do
    ship = Ship.new(3)
    expect(ship.size).to eq 3
  end
  
  it { is_expected.to respond_to(:size) }

  describe 'knows the size of ships' do
    it 'knows the size of a destroyer' do
      expect(Ship::DESTROYER_SIZE).to eq 2
    end
    it 'knows the size of a cruiser' do
      expect(Ship::CRUISER_SIZE).to eq 3
    end
    it 'knows the size of a submarine' do
      expect(Ship::SUBMARINE_SIZE).to eq 3
    end
    it 'knows the size of a battleship' do
      expect(Ship::BATTLESHIP_SIZE).to eq 4
    end
    it 'knows the size of a carrier' do
      expect(Ship::CARRIER_SIZE).to eq 5
    end
  end
  
  describe "#hit" do
    it { is_expected.to respond_to(:status) }
    it { is_expected.to respond_to(:hit) }
    it "changes status to 'hit'" do
    	subject.hit
      expect(subject.status).to eq "hit"
    end
  end

  it { is_expected.to respond_to(:sunk?) }
  it "returns false if aksed if a new ship is sunk" do
    expect(subject.sunk?).to eq false
  end
  it "returns true if ship has been sunk" do 
    subject.hit
    expect(subject.sunk?).to eq true
  end
end