require '../lib/tennis_game_player'
require '../lib/tennis_scorer'

describe TennisGamePlayer do
  subject { described_class.new }

  it 'randomly chooses a player' do
    random_number = subject.random_player
    expect(random_number).to be_an_instance_of(Integer)
  end

  context 'when a new game is started' do

    it 'creates a new TennisScorer instance' do
      expect(TennisScorer).to receive(:new)
      subject
    end
  end
end
