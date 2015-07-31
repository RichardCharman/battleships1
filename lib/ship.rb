class Ship
  attr_reader :size, :status

  def initialize(size)
    @size = size
    @status = "miss"
  end

  def hit
  	@status = "hit"
  end
  
end