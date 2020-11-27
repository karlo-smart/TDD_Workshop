require '../lib/tennis_game_player'

describe TennisGamePlayer do
  subject { described_class.new }

  it 'exists' do
    expect(subject)
  end

  it 'starts a game' do
    expect(subject).to respond_to(:start)
  end
end
