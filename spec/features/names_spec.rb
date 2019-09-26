require './app'

feature 'Player name submission and display' do
  scenario 'Players can submit names via a form and see them on the screen' do
    visit('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'John vs. Chris'
  end
end
