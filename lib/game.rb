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
        @messages.announce_winner(@player1);break
      end
      play_count += 1
      
      if play_count == 9
        @messages.announce_winner;break
      end

      win = @player2.play(@game, @messages)
      if win == true
        @messages.announce_winner(@player2);break
      end
      play_count += 1
    end
  end
end
