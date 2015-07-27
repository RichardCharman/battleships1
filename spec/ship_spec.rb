require 'ship'

describe Ship do
  it 'initializes in a position, with a size and a direction' do
    ship = Ship.new("A1", 3, "N")
    expect(ship.position).to eq "A1" 
    expect(ship.size).to eq 3
    expect(ship.direction).to eq "N"
  end
end