require './app'

feature 'Switch turns' do
    scenario 'at the start of the game the current turn is set to player 1' do
      sign_in_and_play
      expect(page).to have_content "Player turn: John"
    end

    scenario 'after first attack' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'Ok'
      expect(page).to have_content "Player turn: Chris"
    end
end
