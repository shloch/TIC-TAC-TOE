# frozen_string_literal: true

require 'colorize'
# The class to handle Player actions
class Player
  attr_reader :name, :play_letter, :play_record

  def initialize(name, playletter = 'X')
    @player = self
    @name = name
    @play_letter = playletter
    @play_record = []
  end

  def user_input
    print "Choose available square #{@name.upcase.yellow}: "
    selected_box = gets.chomp
    selected_box
  end

  def update_play_record(selected_box)
    @play_record << selected_box
  end

  def select_box(game, message)
    available_number = false
    selected_box = ''
    while available_number == false
      selected_box = user_input
      if game.number_between_1_9? selected_box.to_i
        !game.number_already_chosen?(selected_box.to_i) ? available_number = true : message.alread_selected_warning
      else
        message.correct_number_warning
      end
    end
    selected_box
  end
end
