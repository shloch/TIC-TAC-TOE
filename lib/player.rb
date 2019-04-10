

class Player
    attr_reader :name
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
        #print "won ? = #{self.checkWInner?(@playRecord)}\n"
        return self.checkWInner?(@playRecord)

    end

    def checkWInner?(playRecord)
        #if @playRecord in winnerModule return winner
        if (@playRecord.length < 3)
            return false  
        else
            winnerFormulas = Winner.winningFormulas
            playedPositions = playRecord.sort.join('')

            foundWinner = false
            winnerFormulas.each do |win|
                #print "\n played #{playedPositions} : checking with"
                foundWinner =  playedPositions.include?(win)
                return true if (foundWinner==true)
            end
            return false
            
        end
    end
end
