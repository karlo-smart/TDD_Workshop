require_relative 'score_display'
require_relative 'game_over_error'
require_relative 'illegal_score_error'

class TennisScorer


  attr_accessor :points

  def initialize
    @points = [0,0]
  end

  def add_point(player)
    raise IllegalScoreError unless valid_score?
    raise GameOverError if winner?

    points[player] += 1
  end

  def display_score
    raise IllegalScoreError unless valid_score?

    return "#{leader} wins" if winner?

    ScoreDisplay.new(points).display(leader)
  end

  def winner?
    points.max >= 4 && points.max - points.min >= 2
  end

  def leader
    points[0] > points[1] ? 'Player 1' : 'Player 2'
  end

  def valid_score?
    points.min >= 0 && (points.max <= 4 || (points.max - points.min) <= 2)
  end
end
