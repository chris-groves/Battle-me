require './lib/game'

describe Game do
  it 'accepts the first player' do
    player_1 = Player.new('John')
    player_2 = Player.new('Chris')
    game = Game.new(player_1, player_2)
    expect(game.player_1).to eq player_1
  end

  it 'accepts the second player' do
    player_1 = Player.new('John')
    player_2 = Player.new('Chris')
    game = Game.new(player_1, player_2)
    expect(game.player_2).to eq player_2
  end

  describe '#attack' do
    it 'reduces hit points' do
      john = Player.new('John')
      chris = Player.new('Chris')
      game = Game.new(john, chris)
      expect { game.attack(chris) }.to change { chris.hit_points }.by(-10)
    end
  end
end
