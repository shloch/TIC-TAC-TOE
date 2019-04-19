# The class to handle game execution actions
class GamePlay
  def initialize(player1, player2, game, messages)
    @player1 = player1
    @player2 = player2
    @game = game
    @messages = messages
  end

  def player_turn(player)
    selected_box = player.select_box(@game, @messages)
    @game.fill_array(player.play_letter, selected_box.to_i)
    @game.show_array
    player.update_play_record(selected_box)

    @game.check_winner?(player)
  end

  def loop_play
    play_count = 0
    while play_count < 9
      win = player_turn(@player1)
      if win == true
        @messages.announce_winner(@player1)
        break
      end
      play_count += 1

      if play_count == 9
        @messages.announce_winner
        break
      end

      win = player_turn(@player2)
      if win == true
        @messages.announce_winner(@player2)
        break
      end
      play_count += 1
    end
  end
end
