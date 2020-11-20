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
    if points.min < 3
      points.map { |point| SCORES[point] }
    elsif points[0] == points[1]
      'Deuce'
    elsif points[0] > points[1]
      'Advantage Player 1'
    else
      'Advantage Player 2'
    end
  end
end
