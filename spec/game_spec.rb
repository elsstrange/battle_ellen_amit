require 'game'

describe Game do
  it 'can attack a player' do
    player1 = double
    player2 = double
    game = Game.new(player1, player2)
    expect(player2).to receive(:attacked)
    game.attack_player_2
  end

  it 'can attack a player' do
    player1 = double
    player2 = double
    game = Game.new(player1, player2)
    expect(player1).to receive(:attacked)
    game.attack_player_1
  end
end

#let rspec
