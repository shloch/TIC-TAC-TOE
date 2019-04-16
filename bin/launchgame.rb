$LOAD_PATH.unshift('../lib')
require 'gamemessage'
require 'gameclass'
require 'player'
require 'game'

new_game = Game.new
game_message = GameMessage.new
#=======================================
#            GAME BEGINS HERE
#=======================================

game_message.welcome
print 'PLAYER 1 X CHOOSE NAME : '
name1 = gets.chomp

print 'PLAYER 2 O CHOOSE NAME: '
name2 = gets.chomp

player1 = Player.new(name1, 'X')
player2 = Player.new(name2, 'O')

new_game.showArray
play_game = GamePlay.new(player1, player2, new_game, game_message)
play_game.play
print game_message.game_over
