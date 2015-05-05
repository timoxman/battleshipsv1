require 'Location'

class Grid

  #this getter method is defined for testing only
  attr_reader :size

  def initialize(size)
    @grid = []
    @size = size
    (size**2).times {|i| @grid << Location.new }
  end

  def place_ship(ship_to_place, location_to_place_ship, direction)

  end

  def location(place)  #new bit -  allows a grid to return a location
    @grid[place]
  end


  def to_s  #new bit
    result = ""
    counter = 0
      (1..@size).each {|i|
        (1..@size).each {|j|
          result << "| #{self.location(counter).status} "
          counter += 1
        } #i
        result << "|\n"
      } #j
    puts result
    result
  end

end