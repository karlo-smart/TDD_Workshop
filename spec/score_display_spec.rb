require '../lib/score_display'

describe ScoreDisplay do
  subject { described_class.new(points) }


  context 'when the score is 0:0' do
    let(:points) { [0,0] }

    it 'returns a score of Love All' do
      expect(subject.display).to eq 'Love All'
    end
  end

  context 'when the score is 1:1' do
    let(:points) { [1,1] }

    it 'returns a score of Fifteen All' do
      expect(subject.display).to eq 'Fifteen All'
    end
  end

  context 'when the score is 1:2' do
    let(:points) { [1,2] }

    it 'returns a score of Fifteen Thirty' do
      expect(subject.display).to eq 'Fifteen Thirty'
    end
  end

  context 'when the score is 4:4' do
    let(:points) { [4,4] }

    it 'returns a score of Deuce' do
      expect(subject.display).to eq 'Deuce'
    end
  end

  context 'when the score is 10:10' do
    let(:points) { [10,10] }

    it 'returns a score of Deuce' do
      expect(subject.display).to eq 'Deuce'
    end
  end

  context 'when the score is 4:5' do
    let(:leader) { 'Player 1' }
    let(:points) { [4,5] }

    it 'returns a score of Advantage Player 1' do
      expect(subject.display(leader)).to eq 'Advantage Player 1'
    end
  end
end
