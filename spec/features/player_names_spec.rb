feature 'enter names' do
  let(:player_one) { "Ant" }
  let(:player_two) { "Dec" }
  
  before do
    sign_in_and_play(player_one: player_one, player_two: player_two)
  end

  scenario 'submitting names' do
    expect(page).to have_content(player_one)
    expect(page).to have_content(player_two)
  end
end
