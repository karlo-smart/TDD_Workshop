#!/usr/bin/env ruby

require_relative './tennis_scorer'

class TennisGamePlayer

  attr_reader :scorer

  def initialize
    @scorer = TennisScorer.new
    while !scorer.winner?
      scorer.display_score
      score_point(random_player)
    end
    scorer.display_score
  end

  def random_player
    [0,1].sample
  end

  def score_point(player)
    puts "Player #{player + 1} scores a point"
    scorer.add_point(player)
  end
end

TennisGamePlayer.new
