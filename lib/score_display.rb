class ScoreDisplay
  SCORES = { 0 => 'Love', 1 => 'Fifteen', 2 => 'Thirty', 3 => 'Forty' }

  attr_reader :points

  def initialize(points)
    @points = points
  end

  def display(leader)
    if points.min < 3
      basic_score
    elsif points[0] == points[1]
      'Deuce'
    else
      "Advantage #{leader}"
    end
  end

  def basic_score
    score = points.map { |point| SCORES[point] }

    if score[0] == score[1]
      "#{score[0]} All"
    else
      "#{score[0]} #{score[1]}"
    end
  end

end
