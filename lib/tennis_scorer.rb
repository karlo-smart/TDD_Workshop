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
    if points[0] >= 3 && points[0] == points[1]
      'Deuce'
    else
      points.map { |point| SCORES[point] }
    end
  end
end
