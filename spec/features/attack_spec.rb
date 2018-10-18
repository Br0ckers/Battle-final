feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end
  scenario 'attack Player 1' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Next turn'
    click_button 'Attack'
    expect(page).to have_content 'Mittens attacked Dave'
  end
end
