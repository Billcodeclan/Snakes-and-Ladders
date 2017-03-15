class Game

  attr_reader :player, :die
  # :name, :position, :colour, :players

    def initialize(players, die) #name, position, colour, players
      @players = players
      @die = die
    end

  def whos_turn_is_it()
    @players.rotate!
    return @players.first()
    # puts @players.first()
  end

  def current_player()
    return @players.first
  end

  def move(spaces_moved)
    current_player().position += spaces_moved
    # return current_player().position
  end

  def is_player_a_winner()
    if current_player.position > 99
      return "Winner"
    end
      return "Next Players turn"
  end

end