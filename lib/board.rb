require_relative 'ship'

class Board 
  require 'terminal-table'
  attr_reader :ships
  
  def initialize
  	 @ships = []
  end
  
  def table
    game_board = Terminal::Table.new do |t|
      t << ['A1']
    end
    print game_board.class
  end

  def place(ship)
    fail 'Out of bounds' if out_of_bounds(ship)
    fail 'occupied' if overlap(ship)

    ships << ship
  end

  private

  def out_of_bounds(ship)
    ship.size > 1
  end

  def overlap(ship)
    ship_positions.include?(ship.position)
  end

  def ship_positions
    ships.map{ |ship| ship.position }
  end
end