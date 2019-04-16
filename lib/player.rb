require "colorize"
# The class to handle Player actions
class Player
  attr_reader :name, :playletter

  def initialize(name, playletter = "X")
    @player = self
    @name = name
    @play_letter = playletter
    @play_record = []
  end

  def user_input
    print "Choose available square #{@name.upcase.yellow}: "
    selected_box = gets.chomp
  end

  def update_game(game, selected_box)
    game.fillArray(@play_letter, selected_box.to_i)
    game.showArray
    @play_record << selected_box
  end

  def play(game, message)
    available_number = false; selected_box = " "
    while available_number == false
      selected_box = user_input
      if game.numberBetween_1_9? selected_box.to_i
        !game.numberAlreadyChosen?(selected_box.to_i) ? available_number = true :
          message.alread_selected_warning
      else
        message.correct_number_warning
      end
    end
    update_game(game, selected_box)
    @player.check_winner?(@play_record)
  end

  def check_played_combination(winner_formulas, played_positions)
    found_winner = false
    winner_formulas.each do |win|
      # print '\n played #{played_positions} : checking with'
      count = 0
      win_chars = win.split("")
      win_chars.each {|num|count += 1 if played_positions.include?(num)}
      found_winner = true if count == 3
    end
    found_winner
  end

  def check_winner?(playrecord)
    #if @play_record in winnerModule return winner
    if play_record.length < 3
      false
    else
      winner_formulas = ["123", "456", "789", "147", "258", "369", "159", "357"]
      played_positions = playrecord.sort
      check_played_combination(winner_formulas, played_positions)
    end
  end
end
