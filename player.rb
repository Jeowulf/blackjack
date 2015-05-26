class Player
  attr_accessor :hand
  attr_reader :name
  attr_accessor :chips
  def initialize(args)
    @name = args[:name]
    @hand = args[:hand]
    @chips = args[:chips]
  end


end
