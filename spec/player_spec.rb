require './lib/player'

describe Player do
  it 'can return its name' do
    player = Player.new('Chris')
    expect(player.name).to eq('Chris')
  end
end
