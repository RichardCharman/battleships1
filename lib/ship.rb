class Ship
  attr_reader :position, :size, :direction

  def initialize(position, size, direction)
    @position = position
    @size = size
    @direction = direction
  end
end