class Deck
  attr_accessor :deck
  attr_accessor :hand_array
  def initialize(x, y)
    @deck = []
    make_deck(x, y)
  end
  def make_deck(suits, values)
    suits.each do |i|
      values.each do |j|
        @deck.push([i,j])
        end
      end
  end

  def initial_deal
  @hand_array = [@deck.shuffle.pop, @deck.shuffle.pop ]

  end

  def hit_me
    @deck.shuffle.pop
  end


end
