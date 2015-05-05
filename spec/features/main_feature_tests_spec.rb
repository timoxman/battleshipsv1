require 'capybara/rspec'

feature 'the game is initialised' do
  scenario 'the board is set up and a ship is placed on the board' do
    grid1 = Grid.new
    location1 = Location.new
    ship1 = Ship.new
    grid1.place_ship(ship1,location1,"H")
    expect(ship1).to be_floating
  end


end