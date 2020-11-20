require '../lib/tennis_scorer'

describe TennisScorer do
  let(:tennis_scorer) { TennisScorer.new }

  it 'records score' do
    expect(tennis_scorer.score).to eq [0,0]
  end

  it 'can increment score for player one' do
    tennis_scorer.add_point(0)
    expect(tennis_scorer.score).to eq [15,0]

    tennis_scorer.add_point(0)
    expect(tennis_scorer.score).to eq [30,0]

    tennis_scorer.add_point(0)
    expect(tennis_scorer.score).to eq [40,0]
  end
end
