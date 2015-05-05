require 'capybara/rspec'
require 'Location'
require 'Grid'
require 'Ship'


# As a player
# So that I can prepare for the game
# I would like to place a ship in a board location
feature 'the game is initialised' do
  scenario 'the board is set up and a ship is placed on the grid' do
    grid1 = Grid.new(3)
    location1 = Location.new
    ship1 = Ship.new(2)
    grid1.place_ship(ship1,location1,"H")
    expect(ship1).to be_floating
  end

#so that the user can play the game the user should be able to see a representation of the grid on the screen depending on the size the user wants.
  scenario 'the 1*1 board is set up and displayed to the user' do
    grid1 = Grid.new(1)
    expect(grid1.to_s).to eq "| N |\n"
  end

  scenario 'the 2*2 board is set up and displayed to the user' do
    grid1 = Grid.new(2)
    expect(grid1.to_s).to eq "| N | N |\n| N | N |\n"
  end

# As a player
# So that I can play a more interesting game
# I would like to have a range of ship sizes to choose from
  scenario 'ships can be created of length 2,4 5 units' do
    #I have no matching unit tests for this feature test, not sure what this should be - this feature test looks like several unit tests
    ship1 = Ship.new(2)
    ship2 = Ship.new(4)
    ship3 = Ship.new(5)
    expect(ship1.size).to eq 2
    expect(ship2.size).to eq 4
    expect(ship3.size).to eq 5
  end

# As a player
# So that I can create a layout of ships to fox my opponent
# I would like to be able to choose the directions my ships face in
    #feature test not build, ships orientation doesn't need to be stored, just passed when you place a ship on the grid.

# As a player
# So that I can have a coherent game
# I would like ships to be constrained to be on the board



end