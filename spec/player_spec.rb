require './lib/player.rb'
require './lib/board.rb'
require './lib/messages.rb'

describe Player do
  player = Player.new('chuks')

  describe '#update_play_record' do
    it 'Should return an array' do
      expect(player.update_play_record('5')).to be_an_instance_of(Array)
    end  
   
    it 'Should equal an array with the selected box' do
      expect(player.update_play_record('9')).to eq(['5', '9'])
    end
  end

  describe '#select_box' do
    game = Game.new
    message = GameMessage.new
    player.stub!(:gets) { '5' }

    it 'Should return the selected box' do
      expect(player.select_box(game, message)).to eq('5')
    end
  end
end