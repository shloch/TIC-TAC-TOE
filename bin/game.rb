$LOAD_PATH.unshift('../lib')
require 'winnermodule'
require 'gameclass'
require 'player'

new_game = Game.new

#=======================================
#            GAME BEGINS HERE
#=======================================

puts '============================================'
puts '  WELCOME TO MY TIC - TAC - TOE   '
puts '============================================'
print 'PLAYER 1 X CHOOSE NAME : '
name1 = gets.chomp

print 'PLAYER 2 O CHOOSE NAME: '
name2 = gets.chomp

player1 = Player.new(name1, 'X')
player2 = Player.new(name2, 'O')
puts new_game.access_array
new_game.showArray

play_count = 0
while play_count < 9
  win = player1.play(new_game)
  if win == true
    puts "........ #{player1.name.upcase}  WON....... !!"
    break
  end
  play_count += 1
  # print ' play_count===> #{play_count} \n'

  if play_count == 9
    puts '....DRAW GAME .....'
    break
  end

  win = player2.play(new_game)
  if win == true
    puts "........ #{player2.name.upcase}  WON....... !!"
    break
  end
  play_count += 1
end

print new_game.game_over
