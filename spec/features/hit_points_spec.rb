feature 'Hit points' do
  scenario 'see player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: "Mia"
    fill_in :player_2_name, with: "Cleo"
    click_button "Submit"
    expect(page).to have_content "Cleo: 80HP"
  end      
end
