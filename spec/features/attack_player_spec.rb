require './app'
require './lib/game'
require './lib/player'

feature 'Attacking' do
  scenario "Player 1 can attack Player 2 and get confirmation" do
    sign_in_and_play
    player_1 = Player.new('John')
    player_2 = Player.new('Chris')
    game = Game.new(player_1, player_2)
    p game.turn_number
    p game.player_turn.name
    p game.player_target.name
    click_button 'Attack'
    p game.turn_number
    p game.player_turn.name
    p game.player_target.name
    expect(page).to have_content 'John attacked Chris'
  end

  scenario "Player 2 can attack Player 1 and get confirmation" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    click_button 'Attack'
    expect(page).to have_content 'Chris attacked John'
  end

  scenario "Player 1 attack reduces Player 2's hit points by 10" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    expect(page).to have_content 'Chris - 90HP'
  end

  scenario "Player 2 attack reduces Player 1's hit points by 10" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Ok'
    click_button 'Attack'
    click_button 'Ok'
    expect(page).to have_content 'John - 90HP'
  end

end
