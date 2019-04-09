

class Player
    def initialize(name, playletter='X')
        @name = name
        @playletter = playletter
        @playRecord = []
    end

    def play(game)
        
        puts "CHoose empty square '#{@name}': "
        selectedBox = gets.chomp
       
        game.fillArray(@playletter, selectedBox.to_i) #2code
        game.showArray #2code
        @playRecord << selectedBox
        p @playRecord
        return self.checkWInner?(@playRecord)

    end

    def checkWInner?(playRecord)
        #if @playRecord in winnerModule return winner
        if (@playRecord.length < 3)
            puts 'false'
            return false  
        else
            winnerFormulas = ['123', '456', '789', '147', '258', '369', '159', '357']
            playedPositions = playRecord.sort.join('')

            winnerFormulas.each do |win|
                return playedPositions.include?(win)
            end
            
        end
    end
end
