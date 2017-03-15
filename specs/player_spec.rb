require('minitest/autorun')
require('minitest/rg')
require_relative('../player')
require_relative('../game')


class PlayerTest < MiniTest::Test

def setup

  @game = Game.new([@player1, @player2])
  @player1 = Player.new["Ian", "Red", [1..100]]
  @player2 = Player.new["Bill", "Blue", [1..100]]

end

  def test_whos_turn_is_it
    
    assert_equal("Bill", player.whos_turn_is_it())

  end

end