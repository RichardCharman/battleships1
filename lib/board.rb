require_relative 'ship'

class Board 

  attr_reader :ships, :game_board
  
  def initialize
  	@ships = []
    @game_board = Array.new(10){Array.new(10)}
  end
  
  def place(ship, x, y)
    fail 'Out of bounds!' if y > 10 || (x.ord)-65 > 9 || y < 1 || (x.ord) < 65
    fail "Ship already at location!" if game_board[y-1][x.ord-65] != nil
    game_board[y-1][x.ord-65] = ship
  end

  def fire(x,y)
    if game_board[y-1][x.ord-65] != nil
      status = "hit"
    end
  end

end