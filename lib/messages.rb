class GameMessage
  def welcome
    puts "============================================"
    puts "  WELCOME TO MY TIC - TAC - TOE   "
    puts "============================================"
  end

  def correct_number_warning
    puts "Number must be interval 1-9:"
  end

  def alread_selected_warning
    puts "This position is already selected:"
  end

  def announce_winner(player = nil)
    if player.nil?
      puts "....DRAW GAME ....." 
    else
      puts "........ #{player.name.upcase}  WON....... !!"
    end
  end

  def game_over
    msg = "game over!!!"

    5.times do
      print "\r#{msg.yellow}"
      sleep 0.5
      print "\r #{" " * msg.size}\r" # Send return and however many spaces are needed.
      sleep 0.5
    end
    puts msg.yellow
  end

end
