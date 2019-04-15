require 'colorize'
require '../lib/winnermodule.rb'
# The class to handle Player actions
class Player
  include Winnermodule
  attr_reader :name, :playletter

  def initialize(name, playletter = 'X')
    @player = self
    @name = name
    @play_letter = playletter
    @play_record = []
  end

  def play(game)
    available_number = false
    while available_number == false
      print "Choose available square #{@name.upcase.yellow}: "
      selected_box = gets.chomp
      if game.numberBetween_1_9? selected_box.to_i
        if !game.numberAlreadyChosen? selected_box.to_i
          available_number = true
        else
          game.alread_selected_warning
        end
      else
        game.correct_number_warning
      end
    end

    game.fillArray(@play_letter, selected_box.to_i)
    game.showArray
    @play_record << selected_box
    # print 'won ? = # {player.check_winner?(@play_record)}\n'
    @player.check_winner?(@play_record)
  end

  def check_winner?(play_record)
    #if @play_record in winnerModule return winner
    if play_record.length < 3
      false
    else
      winner_formulas = @player.winning_formulas
      played_positions = play_record.sort
      found_winner = false
      winner_formulas.each do |win|
        # print '\n played #{played_positions} : checking with'
        count = 0
        win_chars = win.split('')
        win_chars.each do |num|
          count += 1 if played_positions.include?(num)
        end
        found_winner = true if count == 3
      end
      found_winner
    end
  end
end
