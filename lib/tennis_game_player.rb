require_relative './tennis_scorer'

class TennisGamePlayer
  def initialize
    TennisScorer.new
  end

  def random_player
    [0,1].sample
  end
end

TennisGamePlayer.new
