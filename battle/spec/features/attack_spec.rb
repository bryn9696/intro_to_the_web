feature 'Enter names' do
  scenario 'get confirmation when player 1 attacks' do
    sign_in_and_play
    save_and_open_page
    expect(page).to have_content 'Michael attacks'
  end
end