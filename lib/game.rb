class GamePlay
  def initialize(player1, player2, game, messages)
    @player1 = player1
    @player2 = player2
    @game = game
    @messages = messages
  end

  def play
    play_count = 0
    while play_count < 9
      win = @player1.play(@game, @messages)
      if win == true
        puts "........ #{@player1.name.upcase}  WON....... !!"
        break
      end
      play_count += 1
      # print ' play_count===> #{play_count} \n'

      if play_count == 9
        puts "....DRAW GAME ....."
        break
      end

      win = @player2.play(@game, @messages)
      if win == true
        puts "........ #{@player2.name.upcase}  WON....... !!"
        break
      end
      play_count += 1
    end
  end
end
