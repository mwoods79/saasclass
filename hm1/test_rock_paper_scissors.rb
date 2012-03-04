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

  def test_rps_game_winner_is_case_insensitive
    assert_equal rps_game_winner([ [ "Armando", "s" ], [ "Dave", "r" ] ]), [ "Dave", "r" ]
  end

  def test_first_player_wins_if_tied
    assert_equal rps_game_winner([ [ "Armando", "r" ], [ "Dave", "r" ] ]), [ "Armando", "r" ]
  end


  def test_integration_there_can_be_a_tournament
    assert_equal rps_tournament_winner(
    [
      [
        [
          ["Armando", "P"], ["Dave", "S"]
        ],
        [
          ["Richard", "R"], ["Michael", "S"] ]
      ],
      [
        [
          ["Allen", "S"], ["Omer", "P"]
        ],
        [
          ["David E.", "R"], ["Richard X.", "P"]
        ]
      ]
    ]), ["Richard", "R"]
  end

  def test_tournament_returns_a_winner_for_simple_tournament
    assert_equal rps_tournament_winner(
      [
        [
          ["Armando", "P"], ["Dave", "S"]
        ],
        [
          ["Richard", "R"], ["Michael", "S"]
        ]
      ]
    ), [ "Richard", "R" ]
  end

  def test_tournament_returns_a_winner_for_a_more_complicated_tournament
    assert_equal rps_tournament_winner([ [ "Armando", "S" ], [ "Dave", "R" ] ]), [ "Dave", "R" ]
  end
end
