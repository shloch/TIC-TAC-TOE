require '../lib/player.rb'

describe Player do
  include Winnermodule
  describe "#check_winner?" do
    it "Should return false for an empty selection" do
      player = Player.new('chuks')
      play_record = []
      expect(player.check_winner?(play_record)).to be_falsey
    end

    it "Should return true with three matching plays" do
      player = Player.new('chuks')
      play_record = ['1', '5', '9']
      expect(player.check_winner?(play_record)).to be_truthy
    end 
  end
end