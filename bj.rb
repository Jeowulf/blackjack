require './cards'
require './deck'
require './hand'
require './player'
class BJ
  attr_accessor :player_hand
  attr_accessor :computer_hand
  def initialize
    @cards = Cards.new
    @deck = Deck.new(@cards.suits, @cards.values)
    @player_hand = Hand.new(@deck.initial_deal)
    @computer_hand = Hand.new(@deck.initial_deal)
    @player = Player.new({
                        name: 'Bob',
                        hand: @player_hand,
                        chips: 30
                        })
    @computer = Player.new ({
                        name: 'Computer',
                        hand: @computer_hand,
                        chips: 30
                        })
    show_initial_cards
    want_to_hit
    over_21
  end
  def show_initial_cards
    puts "Bob has #{@player_hand.hand}"
    puts "----------------------------------------"
    puts "Computer has #{@computer_hand.hand}"
  end

  def want_to_hit
    answer = "yes"
    unless answer == "no"
      puts "Does Bob want to hit(yes or no)?"
      answer = gets.chomp.downcase
      if answer == "yes"
        @player_hand.hand.push(@deck.hit_me)
        puts "Bob has #{@player_hand.hand}"
      end
    end
  end

#creates hand_value variable loops through each item of hand testing for integers and adding
  def hand_value
    @hand_value = @player_hand.hand.flatten.map { |x| Integer(x) rescue nil}.compact.inject(:+)
  end

  def over_21
    hand_value
    if @hand_value > 21
      puts "You busted!"
    else
      want_to_hit
    end
  end


end

game1 = BJ.new
# puts game1.player_hand.hand

