
$LOAD_PATH.unshift("../lib")
require "winnermodule"
require "gameclass"
require "player"


newGame = Game.new

#=======================================
#            GAME BEGINS HERE
#=======================================

puts "============================================"
puts "  WELCOME TO MY TIC - TAC - TOE   "
puts "============================================"
print "PLAYER 1 ('X') CHOOSE NAME : "
name1 = gets.chomp

print "PLAYER 2 ('O') CHOOSE NAME: "
name2 = gets.chomp

player1 = Player.new(name1, 'X')
player2 = Player.new(name2, 'O')


newGame.showArray


playCount=0
while playCount<9 do
    win = player1.play(newGame)
    if win == true
        puts "........ #{player1.name.upcase}  WON....... !!"
        break
    end
    playCount += 1
    #print " playcount===> #{playCount} \n"

    if playCount == 9
        puts "....DRAW GAME ....." 
        break
    end
    
    win = player2.play(newGame)
    if win == true
        puts "........ #{player2.name.upcase}  WON....... !!"
        break
    end
    playCount += 1


end

print "\n  GAME OVER !! \n"



