describe Player do
  let(:given_name) { 'A Name' }
  let(:player) { described_class.new(given_name) }

  it 'returns its name' do
    expect(player.name).to eq given_name
  end

  it 'returns its health' do
    expect(player.health).to eq 100
  end

  it 'reduces health' do
    expect(player.reduce_health(10)).to eq 90
  end

  describe '#dead?' do
    it 'returns false if health is greater than 0' do
      expect(player.dead?).to eq false
    end

    it 'returns true if health is less than or equal to 0' do
      player.reduce_health(100)
      expect(player.dead?).to eq true
    end
  end
end
