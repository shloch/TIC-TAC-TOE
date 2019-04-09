
require('./player')
require('./gameclass')
require('./winnerModule')

newGame = Game.new
newGame.showArray

player1 = Player.new('shloch', 'X')
player2 = Player.new('Bella', 'O')

player1.play(newGame)
player2.play(newGame)
player1.play(newGame)
player2.play(newGame)
player1.play(newGame)


