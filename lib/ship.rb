class Ship
  attr_reader :size, :status

  def initialize(size)
    @size = size
    @status = "miss"
  end
  
end