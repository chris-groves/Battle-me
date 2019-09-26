require './app'

feature 'Attacking Player 2' do
  scenario "Player 1 can attack Player 2 and get confirmation" do
    sign_in_and_play
    click_button 'Attack Chris'
    expect(page).to have_content 'John attacked Chris'
  end
end
