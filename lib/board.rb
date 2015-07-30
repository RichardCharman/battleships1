require_relative 'ship'

class Board 
  require 'terminal-table'
  attr_reader :ships, :game_board
  
  def initialize
  	@ships = []
    @game_board = Array.new(10){Array.new(10)}
  end
  
  def place(ship, x, y)
    game_board[y-1][x.ord-65] = ship
  end

  private

  def out_of_bounds(ship)
    ship.size > 1
  end


end