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

  #def test_returns_the_winner
    #assert_equal rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ]), [ "Dave", "S" ]
  #end

end
