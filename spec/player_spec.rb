require 'player'

describe 'Player' do
  it 'returns its name' do
    player = Player.new("Amit")
    expect(player.name).to eq "Amit"
  end

  it 'reduces score by 10' do
    player = Player.new("Amit")
    player.attacked
    expect(player.hitpoints).to eq 50
  end
end


# subject
