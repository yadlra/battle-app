def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Mia'
  fill_in :player_2_name, with: 'Cleo'
  click_button 'Submit'
end
