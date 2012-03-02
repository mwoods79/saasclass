class WrongNumberOfPlayersError < StandardError ; end 
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
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
