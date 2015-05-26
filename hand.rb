require "./deck"
class Hand
  attr_accessor :hand


  def initialize(hand)
    @hand =  hand
  end

  def get_one_card(hit_me)
    @hand += hit_me
  end

end
