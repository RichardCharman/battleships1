require 'board'

describe Board do
  
  it {is_expected.to respond_to :table}
    
  it 'raise an error if outside of board constraint' do
     board = Board.new
     ship = Ship.new("A1",3, "N")
     expect{subject.place ship}.to raise_error 'Out of bounds'
  end

  it 'raise an error if ship overlap' do
    board = Board.new
    ship1 = Ship.new("A1",1,"N")
    board.place ship1
    ship2 = Ship.new("A1",1,"N")
    expect{board.place ship2}.to raise_error 'occupied'
  end

end
