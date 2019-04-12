require 'colorize'

class Player
    include Winnermodule
    attr_reader :name, :playletter
    def initialize(name, playletter='X')
        @name = name
        @playletter = playletter
        @playRecord = []
    end

    def play(game)
        
        availableNumber = false 
        while (availableNumber == false)
            print "Choose available square '#{@name.upcase.yellow}': "
            selectedBox = gets.chomp
            if (game.numberBetween_1_9?(selectedBox.to_i))
                if (!game.numberAlreadyChosen?(selectedBox.to_i))
                    availableNumber = true
                else
                    game.alread_selected_warning
                end                  
            else
                game.correct_number_warning
            end
        end
        
       
        game.fillArray(@playletter, selectedBox.to_i) #2code
        game.showArray #2code
        @playRecord << selectedBox
        #print "won ? = #{self.checkWInner?(@playRecord)}\n"
        return self.checkWInner?(@playRecord)

    end



    def checkWInner?(playRecord)
        #if @playRecord in winnerModule return winner
        if (@playRecord.length < 3)
            return false  
        else
            
            winnerFormulas = self.winningFormulas
            playedPositions = playRecord.sort.join('')

            foundWinner = false
            winnerFormulas.each do |win|
                #print "\n played #{playedPositions} : checking with"
                foundWinner =  playedPositions.include?(win)
                return true if (foundWinner)
            end
            return false
            
        end
    end
end
