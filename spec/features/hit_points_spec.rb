require './app'

feature 'Player Hit Points' do
  scenario "Both players' hit points are displayed" do
    sign_in_and_play
    expect(page).to have_content 'John - 100HP Chris - 100HP'
  end
end
