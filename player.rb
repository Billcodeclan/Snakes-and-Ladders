class Player

attr_reader :game, :name, :colour
attr_accessor :position

  def initialize(name, position, colour) #game
    
    # @game = game  
    @name = name
    @position = position
    @colour = colour
    

  end

  def whos_turn_is_it
    @game.name.rotate!
    return @game.name.first()
  end

end