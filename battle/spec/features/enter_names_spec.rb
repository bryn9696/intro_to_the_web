feature 'Enter names' do
    scenario 'enter name of players' do
      visit('/')
      fill_in :player_1_name, with: 'Michael'
      fill_in :player_2_name, with: 'Bryn'
      click_button 'Submit'
      save_and_open_page
      expect(page).to have_content 'Michael vs. Bryn'
    end
  end