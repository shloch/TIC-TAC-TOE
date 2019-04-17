require './lib/gameclass.rb'
require './lib/player.rb'

describe Game do
  before(:each) do
    @player = Player.new('chuks')
    @game = Game.new
  end

  describe "#check_winner?" do
    it "Should return false for an empty selection" do
      @player.play_record = []
      expect(@game.check_winner?(@player)).to be_falsey
    end

    it "Should return true with three matching plays" do
      @player.play_record = ['1', '5', '7', '9']
      expect(@game.check_winner?(@player)).to be_truthy
    end
  end

  describe "#fillArray" do
    it "Should return an array with provide value" do
      expect(@game.fillArray('X',5)).to eq('X')
    end
  end

  describe "#numberBetween_1_9?" do
    it "Should return true if number is between 1 an 9" do
      expect(@game.numberBetween_1_9?(4)).to be_truthy
    end

    it "Should return false if number is not between 1 an 9" do
      expect(@game.numberBetween_1_9?(0)).to be_falsey
    end
  end

  describe "#numberAlreadyChosen?" do
    it "Should return true if number was chosen" do
      @game.fillArray('X',5)
      expect(@game.numberAlreadyChosen?(5)).to be_truthy
    end

    it "Should return false if number not chosen" do
      @game.fillArray('X',5)
      expect(@game.numberAlreadyChosen?(6)).to be_falsey
    end
  end
end