require './app'

feature 'Player 2 Hit Points' do
  scenario "Player 1 can see Player 2's Hit Points" do
    sign_in_and_play
    expect(page).to have_content 'John - 100HP Chris - 100HP'
  end
end
