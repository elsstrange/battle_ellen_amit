RSpec.describe Game do
  let(:player_one) { double("player one", dead?: false) }
  let(:player_two) { double("player two", dead?: false, reduce_health: nil) }
  let(:player_class) { double("player class") }
  let(:game) { described_class.new("one", "two", player: player_class) }

  before do
    allow(player_class).to receive(:new).and_return(player_one, player_two)
  end

  it 'returns player one' do
    expect(game.player_one).to eq player_one
  end

  it 'returns player two' do
    expect(game.player_two).to eq player_two
  end

  it 'returns the player who can attack' do
    expect(game.active_player).to eq player_one
  end

  it 'returns the player who will be attacked' do
    expect(game.passive_player).to eq player_two
  end

  it 'attacks a player' do
    expect(player_two).to receive(:reduce_health)
    game.attack
  end

  # it 'swaps turns after an attack' do
  #   expect { game.attack }.to change { game.active_player }.from(player_one).to(player_two) 
  # end

  it 'swaps turns' do
    game.turnover
    expect(game.active_player).to eq player_two
  end

  describe '#game_over?' do
    it 'returns false if neither player has 0 health' do
      expect(game.game_over?).to eq false
    end

    it 'returns true if player one died' do
      allow(player_one).to receive(:dead?).and_return true
      expect(game.game_over?).to eq true
    end

    it 'returns true if player two died' do
      allow(player_two).to receive(:dead?).and_return true
      expect(game.game_over?).to eq true
    end
  end

  describe '#loser' do
    context 'player one lost' do
      it 'returns player one' do
        allow(player_one).to receive(:dead?).and_return true
        expect(game.loser).to eq player_one
      end
    end
    context 'player two lost' do
      it 'returns player two' do
        allow(player_two).to receive(:dead?).and_return true
        expect(game.loser).to eq player_two
      end
    end
  end
end
