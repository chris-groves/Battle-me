require './app'

feature 'Player name submission and display' do
  scenario 'Players can submit names via a form and see them on the screen' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Chris'
  end
end
