require 'ship'

describe Ship do
  it 'initializes with a size' do
    ship = Ship.new(3)
    expect(ship.size).to eq 3
  end
end