require '../lib/gameclass.rb'

describe Game do
  describe "#filling_array" do
    it "Should return an array with correct content" do
      game = Game.new
      game.fillArray('X',5)
      expect(game.access_array).to eq([1, 2, 3, 4, 'X', 6, 7, 8, 9])
    end
  end
end