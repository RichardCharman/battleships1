require 'ship'

describe Ship do
#  it {is_expected.to respond_to(:initialize).with(1).argument}

  it 'initializes in a position' do
    ship = Ship.new("A1", 3)
    expect(ship.position).to eq "A1" 
  end
  
#  it {is_expected.to respond_to(:initialize).with(1).argument}
  
  it 'initializes with a size of ship' do
    ship = Ship.new("A1", 3)
    expect(ship.size).to eq 3
  end

end