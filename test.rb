require './cards'
require './deck'
require './hand'
require './player'

cards = Cards.new
deck1 = Deck.new(cards.suits, cards.values)
hand   = Hand.new(deck1.initial_deal)
# puts hand.hand
# hand.get_one_card(game1.hit_me)
# puts "---------------------"
# puts hand.hand
bob = Player.new({
  name: 'Bob',
  hand: hand,
  chips: 30
  })
puts bob.hand.hand
bob.hand.get_one_card(deck1.hit_me)
puts "---------------------"
puts bob.hand.hand
