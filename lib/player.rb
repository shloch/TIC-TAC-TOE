require "colorize"
# The class to handle Player actions
class Player
  attr_reader :name, :playletter, :play_record

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

  def update_play_record(selected_box)
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
    game.fillArray(@play_letter, selected_box.to_i)
    game.showArray
    update_play_record(selected_box)
    game.check_winner?(@player)
  end
end
