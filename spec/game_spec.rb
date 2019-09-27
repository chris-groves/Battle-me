require './lib/game'

describe Game do
  describe '#attack' do
    it 'reduces hit points' do
      john = Player.new('John')
      chris = Player.new('Chris')
      game = Game.new
      expect { game.attack(chris) }.to change { chris.hit_points }.by(-10)
    end
  end
end
