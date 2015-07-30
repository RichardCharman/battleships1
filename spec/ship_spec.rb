require 'ship'

describe Ship do
	let(:subject) {Ship.new(1)}
  
  it 'initializes with a size' do
    ship = Ship.new(3)
    expect(ship.size).to eq 3
  end
  it { is_expected.to respond_to(:status) }
  

end