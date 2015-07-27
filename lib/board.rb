require_relative 'ship'

class Board 
  require 'terminal-table'

  def initialize
  	@Board = []
  end
  
  def table
    table = Terminal::Table.new do |t|
      t << ['A1']
    end
  end

  def place(ship)
  	fail 'Out of bounds' if ship.size > 1
  	@Board << ship	
  end
end