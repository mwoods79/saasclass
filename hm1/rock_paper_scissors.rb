class WrongNumberOfPlayersError < StandardError ; end 
class NoSuchStrategyError < StandardError ; end

def rps_game_winner game 
  raise WrongNumberOfPlayersError unless game.length == 2
  player1 = game.first
  player2 = game.last 
  play1  =  player1.last.downcase 
  play2  =  player2.last.downcase
  raise NoSuchStrategyError unless play1.match(/[p|r|s]/) and play2.match(/[p|r|s]/)
  return player2 if play1 == 'r' and play2 == 'p'
  return player2 if play1 == 's' and play2 == 'r'
  return player2 if play1 == 'p' and play2 == 's'
  player1
end

def rps_tournament_winner tournament
  # if the tournament is only one player, return the player
  return tournament if tournament.flatten.length == 2
  # mini tournaments
  first = tournament.first
  second = tournament.last

  # return the game winner from the recursive calls
  rps_game_winner([rps_tournament_winner(first), rps_tournament_winner(second)])
end
