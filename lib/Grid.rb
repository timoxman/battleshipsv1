require 'Location'

class Grid

# each player will have a grid this stores an array of locations. Where the location is in the array (what number index), determines where on the board the location is. Grid's sole job is to manage placement.


  #this getter method is defined for testing only
  attr_reader :size

  def initialize(size)
    @grid = []
    @size = size
    (size**2).times {|i| @grid << Location.new }
  end

  def place_ship(ship_to_place, location, direction)


    if direction == "H"
      east_edge_of_ship = location + ship_to_place.size - 1
      if location % @size == 0
        last_square_on_right = location
      else
        last_square_on_right =   location - (location % @size) + @size
      end
      fail "Ship is off the board" if east_edge_of_ship > last_square_on_right
    elsif direction == "V"
      south_edge_of_ship = location + ((ship_to_place.size - 1 ) * @size  )
      fail "Ship is off the board" if south_edge_of_ship > @size**2
    end

    #refactor to
    #fail "Ship is off the board" if !ship_fits_on_grid?

    # update board

  end

  def ship_fits_on_grid?(ship_length, location, direction)

  end



  def location(place)  #allows a grid to return a location
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

    result
  end

end