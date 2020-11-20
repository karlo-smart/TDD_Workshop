require '../lib/tennis_scorer'

describe TennisScorer do
  let(:tennis_scorer) { TennisScorer.new }

  it 'calls method' do
    expect(tennis_scorer.test).to eq true
  end
  
  it 'records score' do
    expect(tennis_scorer.score).to eq [0,0]
  end
end
