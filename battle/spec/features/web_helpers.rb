def sign_in_and_play
	visit('/')
	fill_in :player_1_name, with: 'Michael'
	fill_in :player_2_name, with: 'Bryn'
	click_button 'Submit'
end