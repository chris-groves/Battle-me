require './app'

feature 'Player 2 Hit Points' do
  scenario "Player 1 can see Player 2's Hit Points" do
    visit('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'John vs. Chris - 100 HP'
  end
end
