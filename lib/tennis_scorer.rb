class TennisScorer
  SCORES = { 0 => 0, 1 => 15, 2 => 30, 3 => 40 }

  attr_accessor :points

  def initialize
    @points = [0,0]
  end

  def add_point(player)
    points[player] += 1
  end

  def score
    return "#{leader} wins" if winner?

    if points.min < 3
      points.map { |point| SCORES[point] }
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
end
