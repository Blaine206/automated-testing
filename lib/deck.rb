
# deck.rb

require_relative 'card'

class Deck

  def initialize
    @card = []
    suits =  [:hearts, :spades, :clubs, :diamonds]
    suits.each do |suit|
      (1..13).each do |value|
        card = Card.new(value, suit)
        @card << card
      end
    end
  end

  def draw
    @card.reject { |e| e.nil? }
    @card.sample
    # returns a card
  end

  def shuffle
    # shuffles the deck
    @card.shuffle
  end
end
