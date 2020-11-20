class GameOverError < StandardError
end

class IllegalScoreError < StandardError
end

class TennisScorer
  SCORES = { 0 => "Love", 1 => "Fifteen", 2 => "Thirty", 3 => "Forty" }

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

    if points.min < 3
      score = points.map { |point| SCORES[point] }
      if score[0] == score[1]
        "#{score[0]} All"
      else
        "#{score[0]} #{score[1]}"
      end
    elsif points[0] == points[1]
      'Deuce'
    else
      "Advantage #{leader}"
    end
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
