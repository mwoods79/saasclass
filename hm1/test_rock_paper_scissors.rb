require 'test/unit'
require './rock_paper_scissors'

class TestRockPaperScissors < Test::Unit::TestCase

  def test_cant_have_three_players
    assert_raise(WrongNumberOfPlayersError) do
      rps_game_winner([["Armando", "P"],['Dave', 'S'],['David E.', 'R']])
    end
  end

  def test_cant_have_one_player
    assert_raise(WrongNumberOfPlayersError) do
      rps_game_winner([["Armando", "P"]])
    end
  end

  def test_cant_use_dynomite_or_nukes
    assert_raise(NoSuchStrategyError) do
      rps_game_winner([ [ "Armando", "P" ], [ "Dave", "N" ] ])
    end
  end

  def test_scissors_beat_paper
    assert_equal rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ]), [ "Dave", "S" ]
  end

  def test_paper_beats_rock
    assert_equal rps_game_winner([ [ "Armando", "R" ], [ "Dave", "P" ] ]), [ "Dave", "P" ]
  end

  def test_rock_beats_scissors
    assert_equal rps_game_winner([ [ "Armando", "S" ], [ "Dave", "R" ] ]), [ "Dave", "R" ]
  end
end
