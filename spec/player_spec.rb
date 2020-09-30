RSpec.describe Player do
  let(:given_name) { 'A Name' }
  let(:player) { described_class.new(given_name) }

  it 'returns its name' do
    expect(player.name).to eq given_name
  end

  it 'returns its health' do
    expect(player.health).to eq 100
  end

  it 'reduces health' do
    expect(player.reduce_health).to eq 90
  end
end
