feature 'Hit points' do
  scenario 'I want to see Player 2s hit points' do
    sign_in_and_play
    save_and_open_page
    expect(page).to have_content 'Bryn 60HP'
  end
end