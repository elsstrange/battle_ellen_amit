feature 'see hit points' do
  let(:player_one) { "Ant" }
  let(:player_two) { "Dec" }

  before do
    sign_in_and_play(player_one: player_one, player_two: player_two)
  end

  scenario 'see both players hit points: new game' do
    expect(page).to have_content("#{player_one} Health: 100")
    expect(page).to have_content("#{player_two} Health: 100")
  end

  scenario 'see both players hit points: during game' do
    2.times { attack_and_continue }
    expect(page).to have_content("#{player_one} Health: 90")
    expect(page).to have_content("#{player_two} Health: 90")
  end
end
