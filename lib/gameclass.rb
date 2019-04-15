
class Game
  def initialize
    @filling_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def fillArray(playletter, selectedBox)
    @filling_array[selectedBox - 1] = playletter
  end

  def showArray
    puts
    puts "#{@filling_array[0]} | #{@filling_array[1]} | #{@filling_array[2]}"
    puts ""
    puts "#{@filling_array[3]} | #{@filling_array[4]} | #{@filling_array[5]}"
    puts ""
    puts "#{@filling_array[6]} | #{@filling_array[7]} | #{@filling_array[8]}"
    puts
  end

  def numberAlreadyChosen?(selectedBox)
    (@filling_array[selectedBox - 1] == "X" || @filling_array[selectedBox - 1] == "O") ? true : false
  end

  def numberBetween_1_9?(number)
    (number >= 1 && number <= 9) ? true : false
  end

  def correct_number_warning
    puts "Number must be interval 1-9:"
  end

  def alread_selected_warning
    puts "This position is already selected:"
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
