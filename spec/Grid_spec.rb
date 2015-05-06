require 'Grid'

describe Grid do

  let (:double_ship) {double :ship, size: 2}

  it 'creates a blank grid' do
    grid1 = Grid.new(2)
    expect(grid1.size).to eq 2
  end


  it 'outputs a string' do
    grid1 = Grid.new(2)
    expect(grid1.to_s.class).to eq String
  end

  it 'raises an error if ship is off the board' do
    grid1 = Grid.new(3)
    #double.stub() if you call place_ship(double_ship) => "ships off the board" - how can I write this syntax?
    expect {grid1.place_ship(double_ship,9,"H")}.to raise_error "Ship is off the board"
  end

  it 'doesnt raise an error if ship is on the board' do
    grid1 = Grid.new(3)
    #double.stub() if you call place_ship(double_ship) => "super duper"
    expect {grid1.place_ship(double_ship,1,"H")}.not_to raise_error
  end

end
