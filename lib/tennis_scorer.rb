class TennisScorer

  attr_reader :score

  def initialize
    @score = [0,0]
  end

  def add_point(player)
    if score[player] == 0
      score[player] = 15
    end
  end
end
