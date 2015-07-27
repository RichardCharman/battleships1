require 'board'

describe Board do
  
  it {is_expected.to respond_to :table}
    
   it 'raise an error if outside of board constraint' do
     board = Board.new
     ship = Ship.new("A1",3, "N")
     expect{subject.place ship}.to raise_error 'Out of bounds'
	 end
end