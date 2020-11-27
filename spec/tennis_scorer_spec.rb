require '../lib/tennis_scorer'

describe TennisScorer do

  context 'when initialising the scorer without giving a score' do
    subject { described_class.new }

    it 'has an initial score of 0,0' do
      expect(subject.points).to eq [0,0]
    end

    it 'can increment score for player one' do
      subject.add_point(0)

      expect(subject.points).to eq [1,0]
    end

    it 'can increment score for player two' do
      subject.add_point(1)

      expect(subject.points).to eq [0,1]
    end
  end

  context 'when initialising the scorer with a score' do
    subject { described_class.new(points) }

    context 'when the score is 4,0' do
      let(:points) { [4,0] }

      it 'can detect a winner' do
        expect(subject.winner?)
      end

      it 'does not allow further points to be added' do
        expect{ subject.add_point(0) }.to raise_error(GameOverError)
      end
    end

    context 'when the score is 3,0' do
      let(:points) { [3,0] }

      it "doesn't detect a winner" do
        expect(!subject.winner?)
      end
    end

    context 'when the score is 6,4' do
      let(:points) { [6,4] }

      it 'can detect a winner' do
        expect(subject.winner?)
      end

      it 'does not allow further points to be added' do
        expect{ subject.add_point(0) }.to raise_error(GameOverError)
      end
    end

    context 'when the score is 5,4' do
      let(:points) { [5,4] }

      it "doesn't detect a winner" do
        expect(!subject.winner?)
      end
    end

    context 'when the score is 7,4' do
      let(:points) { [7,4] }

      it 'detects an illegal score' do
        expect{ subject.add_point(0) }.to raise_error(IllegalScoreError)
      end
    end
  end
end
