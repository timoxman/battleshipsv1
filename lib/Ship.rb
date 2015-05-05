class Ship

  def initialize(size)
    @size = size
  end

  #this getter method is defined for testing only
  attr_reader :size

  def floating?
    true
  end
end