require './lib/gameclass'
require './lib/player'
require './lib/winnermodule'

RSpec.describe Player do
    describe "#play" do
      it "returns if player has won" do
        pl = Player.new("shloch", "X")
        game = game.new

        #pl.play_record = ["1", "2", "3"]

        expect(pl.play(game)).to eql(7)
      end
    end
  end