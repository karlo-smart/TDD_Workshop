require '../lib/tennis_scorer'

describe TennisScorer do
  let(:tennis_scorer) { TennisScorer.new }

  it 'can increment score for player one' do
    tennis_scorer.add_point(0)
    expect(tennis_scorer.display_score).to eq "Fifteen Love"

    tennis_scorer.add_point(0)
    expect(tennis_scorer.display_score).to eq "Thirty Love"

    tennis_scorer.add_point(0)
    expect(tennis_scorer.display_score).to eq "Forty Love"
  end

  it 'can detect deuce' do
    tennis_scorer.points = [3,3]
    expect(tennis_scorer.display_score).to eq 'Deuce'

    tennis_scorer.points = [5,5]
    expect(tennis_scorer.display_score).to eq 'Deuce'
  end

  it 'can detect advantage' do
    tennis_scorer.points = [4,3]
    expect(tennis_scorer.display_score).to eq 'Advantage Player 1'

    tennis_scorer.points = [3,4]
    expect(tennis_scorer.display_score).to eq 'Advantage Player 2'
  end

  it 'can detect a winner' do
    tennis_scorer.points = [4,0]
    expect(tennis_scorer.display_score).to eq 'Player 1 wins'
  end

  it 'if the game has finished, you can not add points' do
    tennis_scorer.points = [4,0]
    expect{ tennis_scorer.add_point(0) }.to raise_error(GameOverError)
  end

  it 'detects and illegal score' do
    tennis_scorer.points = [4,7]
    expect{ tennis_scorer.add_point(0) }.to raise_error(IllegalScoreError)
  end
end
