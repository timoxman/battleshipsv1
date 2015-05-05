require 'capybara/rspec'
require 'Location'
require 'Grid'
require 'Ship'


feature 'the game is initialised' do
  scenario 'the board is set up and a ship is placed on the grid' do
    grid1 = Grid.new(3)
    location1 = Location.new
    ship1 = Ship.new
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





end