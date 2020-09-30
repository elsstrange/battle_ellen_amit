describe 'hit points', type: :feature do

  it 'attacks player 2' do
    sign_in_and_play('Amit', 'Ed')
    # puts "page: #{page.body}"
    click_link 'Attack'
    expect(page).to have_content 'Amit attacked Ed'
  end
end
