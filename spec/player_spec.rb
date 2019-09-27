require './lib/player'

describe Player do
  it 'can return its name' do
    chris = Player.new('Chris')
    expect(chris.name).to eq('Chris')
  end

  describe '#hit_points' do
    it 'displays the hit points' do
      chris = Player.new('Chris')
      expect(chris.hit_points).to eq Player::STARTING_HIT_POINTS
    end
  end
end
