# frozen_string_literal: true

require '../lib/player.rb'
require '../lib/gameclass.rb'

describe Player do
  describe '#check_winner?' do
    it 'Should return false for an empty selection' do
      player = Player.new('chuks')
      play_record = []
      expect(player.check_winner?(play_record)).to be_falsey
    end

    it 'Should return true with three matching plays' do
      player = Player.new('chuks')
      play_record = %w[1 5 7 9]
      expect(player.check_winner?(play_record)).to be_truthy
    end

    it 'Should return an array' do
      player = Player.new('chuks')
      gaming = Game.new

      expect(player.update_game(gaming, '5')).to be_an_instance_of(Array)
    end

    it 'Should equal' do
      player = Player.new('chuks')
      gaming = Game.new
      expect(player.update_game(gaming, '9')).to eq(['9'])
    end
  end
end
