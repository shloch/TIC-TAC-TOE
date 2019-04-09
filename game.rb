
require('./player')
require('./gameclass')
require('./winnerModule')

newGame = Game.new
newGame.showArray

player1 = Player.new('shloch', 'X')
player2 = Player.new('Bella', 'O')


playCount=0
while playCount<9 do
    win = player1.play(newGame)
    if win == true
        puts "........ #{player1.name.upcase}  WON....... !!"
        break
    end
    playCount += 1
    print "n playcount===> #{playCount} \n"

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

   
    
    
    print "playcount===> #{playCount} \n"
end

print "\n  GAME OVER !! \n"



