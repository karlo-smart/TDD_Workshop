require '../lib/tennis_scorer'

describe 'TennisScorer' do
  it 'calls method' do
    test = TennisScorer.new.test

    expect(test).to eq true
  end
end
