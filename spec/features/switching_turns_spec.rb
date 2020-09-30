describe 'switching turns', type: :feature do
  let(:player1) {'Amit'}
  let(:player2) {'Ed'}
  it 'can switch turns from player 2 to player 1' do
    sign_in_and_play(player1, player2)
    # puts "page: #{page.body}"
    click_link "Attack #{player2}"
    click_link "Attack #{player1}"
    expect(page).to have_content "#{player2} attacked #{player1}"
    expect(page).to have_content '50'
  end

  it 'can switch turns from player 2 to player 1' do
    sign_in_and_play(player1, player2)
    # puts "page: #{page.body}"
    click_link "Attack #{player2}"
    click_link "Attack #{player1}"
    click_link "Attack #{player2}"
    expect(page).to have_content "#{player1} attacked #{player2}"
    expect(page).to have_content '40'
  end
end
