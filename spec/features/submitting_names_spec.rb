feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Mia'
    fill_in :player_2_name, with: 'Cleo'
    click_button 'Submit'
    expect(page).to have_content 'Mia vs. Cleo'
  end
end
