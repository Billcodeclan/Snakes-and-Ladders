require('minitest/autorun')
require('minitest/rg')
require_relative('../game')
require_relative('../player')
require_relative('../die')

class GameTest < MiniTest::Test

def setup

  @die = Die.new([1, 2, 3, 4, 5, 6])
  @player1 = Player.new("Ian", 0, "Red") #["Ian", "Red", [1..100]]
  @player2 = Player.new("Bill", 0, "Blue")
  @game = Game.new([@player1, @player2], @die)
  
end

  def test_whos_turn_is_it
    
    player_turn = @game.whos_turn_is_it()

    assert_equal("Bill", player_turn.name)

    assert_equal(@player2, player_turn)

  end

  # def test2_whos_turn_is_it
  #   player_turn = @game.whos_turn_is_it()

  #   assert_equal("Ian", player_turn.name)
  # end

def test_how_many_spaces_to_move
    @game.move(3)
    assert_equal(3, @player1.position)

end 
 
 def test_is_player_a_winner
  @game.move(100)
  assert_equal("Winner", @game.is_player_a_winner)

 end 

 def test_is_player_a_winner
  @game.move(3)
  assert_equal("Next Players turn", @game.is_player_a_winner)

 end 

end