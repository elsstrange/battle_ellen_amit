feature 'attacking' do
  let(:player_one) { "Ant" }
  let(:player_two) { "Dec" }
  
  before do
    sign_in_and_play(player_one: player_one, player_two: player_two)
  end

  context 'player one attacks' do
    scenario 'making attack' do
      expect(page).to have_content("ATTACK #{player_two}!")
    end
    
    scenario 'confirming attack' do
      attack
      expect(page).to have_content("WHAM! You attacked #{player_two}!")
      expect(page).to have_content("#{player_two} Health: 90")
    end

    scenario 'completing attack' do
      attack_and_continue
      expect(current_path).to eq '/play'
      expect(page).to have_content("ATTACK #{player_one}!")
    end
  end
  
  context 'player two attacks' do
    scenario 'making attack' do
      attack_and_continue
      attack
      expect(page).to have_content("WHAM! You attacked #{player_one}!")
      expect(page).to have_content("#{player_one} Health: 90")
    end
    
    scenario 'completing attack' do
      2.times { attack_and_continue }
      expect(current_path).to eq '/play'
      expect(page).to have_content("ATTACK #{player_two}!")
    end
  end
end
