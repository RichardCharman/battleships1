require 'ship'

describe Ship do
  
  it 'initializes in a position' do
    ship = Ship.new("A1")
    expect(ship.position).to eq "A1" 
  end

end