class Game
    @@filling_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  def fillArray(playletter, selectedBox)
    @@filling_array[selectedBox - 1] = playletter
  end

  def access_array
    @@filling_array
  end

  def showArray
    puts
    puts "#{@@filling_array[0]} | #{@@filling_array[1]} | #{@@filling_array[2]}"
    puts ""
    puts "#{@@filling_array[3]} | #{@@filling_array[4]} | #{@@filling_array[5]}"
    puts ""
    puts "#{@@filling_array[6]} | #{@@filling_array[7]} | #{@@filling_array[8]}"
    puts
  end

  def numberAlreadyChosen?(selectedBox)
    (@@filling_array[selectedBox - 1] == "X" || @@filling_array[selectedBox - 1] == "O") ? true : false
  end

  def numberBetween_1_9?(number)
    (number >= 1 && number <= 9) ? true : false
  end
end
