describe 'hit points', type: :feature do

  it 'shows player 2s hit points' do
    sign_in_and_play('Amit', 'Ed')
    # puts "page: #{page.body}"
    expect(page).to have_content '60'
  end

  it 'reduces player 2s hit points by 10' do
    sign_in_and_play('Amit', 'Ed')
    click_link 'Attack'
    expect(page).to have_content "Ed's HP reduced by 10. Ed's HP: 50"
  end

end
