class Ship
  DESTROYER_SIZE = 2
  CRUISER_SIZE = 3
  SUBMARINE_SIZE = 3
  BATTLESHIP_SIZE = 4
  CARRIER_SIZE = 5
  
  attr_reader :size, :status

  def initialize(size)
    @size = size
    @status = "miss"
  end
  
  def self.destroyer
    new(DESTROYER_SIZE)
  end
  
  def self.cruiser
    new(CRUISER_SIZE)
  end
  
  def self.submarine
    new(SUBMARINE_SIZE)
  end
  
  def self.battleship
    new(BATTLESHIP_SIZE)
  end
  
  def self.carrier
    new(CARRIER_SIZE)
  end

  def hit
  	@status = "hit"
  end

  def sunk?
    return false if status == "miss"
    true
  end
  
end