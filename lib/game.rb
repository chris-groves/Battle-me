class Game
  attr_accessor :player_1, :player_2, :player_target, :player_turn, :turn_number

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_target = player_2
    @player_turn = player_1
    @turn_number = 1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @turn_number += 1
    @player_turn = player_1 if @turn_number % 2 != 0
    @player_turn = player_2 if @turn_number % 2 == 0
    @player_target = player_1 if @player_turn == player_2
    @player_target = player_2 if @player_turn == player_1
  end
end
