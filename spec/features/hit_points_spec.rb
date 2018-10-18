feature 'View hit points' do
  scenario '' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 100HP'
    expect(page).to have_content 'Dave: 100HP'

  end
end
