feature 'Attack' do
  scenario 'get confirmation when player 1 attacks' do
    sign_in_and_play
    save_and_open_page
    click_link "Attack"
    expect(page).to have_content "Michael attacks"
  end
#I want my attack to reduce Player 2's HP by 10
  scenario 'when player 1 attacks, reduce Player 2s HP by 10' do
    sign_in_and_play
    save_and_open_page
    click_link "Attack"
    expect(page).to have_content "Michael attacks, Bryn 50HP"
  end
end