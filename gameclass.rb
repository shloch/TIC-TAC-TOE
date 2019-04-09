
class Game
    def initialize
        @filling_array = [1,2,3,4,5,6,7,8,9]
    end

    def fillArray(playletter, selectedBox)
        @filling_array[selectedBox-1] = playletter
    end

    def showArray
        puts "#{@filling_array[0]} | #{@filling_array[1]} | #{@filling_array[2]}"
        puts "#{@filling_array[3]} | #{@filling_array[4]} | #{@filling_array[5]}"
        puts "#{@filling_array[6]} | #{@filling_array[7]} | #{@filling_array[8]}"
    end
end