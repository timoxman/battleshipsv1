require 'Grid'

describe Grid do

  it 'creates a blank grid' do
    grid1 = Grid.new(2)
    expect(grid1.size).to eq 2
  end


  it 'outputs a string' do
    grid1 = Grid.new(2)
    expect(grid1.to_s.class).to eq String
  end


end
