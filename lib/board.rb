# frozen_string_literal: true

# The class to handle board actions
class Game
  def initialize
    @filling_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def fill_array(playletter, selected_box)
    @filling_array[selected_box - 1] = playletter
  end

  def access_array
    @filling_array
  end

  def show_array
    puts
    puts "#{@filling_array[0]} | #{@filling_array[1]} | #{@filling_array[2]}"
    puts
    puts "#{@filling_array[3]} | #{@filling_array[4]} | #{@filling_array[5]}"
    puts
    puts "#{@filling_array[6]} | #{@filling_array[7]} | #{@filling_array[8]}"
    puts
  end

  def number_already_chosen?(selected_box)
    @filling_array[selected_box - 1] == 'X' || @filling_array[selected_box - 1] == 'O' ? true : false
  end

  def number_between_1_9?(number)
    number >= 1 && number <= 9 ? true : false
  end

  def check_winner?(player)
    if player.play_record.length < 3
      false
    else
      winner_formulas = %w[123 456 789 147 258 369 159 357]
      check_player_combination(winner_formulas, player.play_record.sort)
    end
  end

  def check_player_combination(winner_formulas, played_positions)
    found_winner = false
    winner_formulas.each do |win|
      count = 0
      win_chars = win.split('')
      win_chars.each { |num| count += 1 if played_positions.include?(num) }
      found_winner = true if count == 3
    end
    found_winner
  end
end
