#!/Users/david.morton/.rbenv/shims/ruby -w

require_relative './tennis_scorer'

class TennisGamePlayer
  def initialize
    scorer = TennisScorer.new
    while !scorer.winner?
      scorer.display_score
      rand_play = random_player
      scorer.add_point(rand_play)
    end
    scorer.display_score
  end

  def random_player
    [0,1].sample
  end
end

TennisGamePlayer.new
