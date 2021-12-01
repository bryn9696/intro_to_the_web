feature 'Enter names' do
    scenario 'enter name of players' do
      sign_in_and_play
      save_and_open_page
      expect(page).to have_content 'Michael vs. Bryn'
    end
end
