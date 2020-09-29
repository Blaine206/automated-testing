
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
    suit_error(suit)
    value_error(value)
  end

  def suit_error(suit)
    valid_suits = [:hearts, :spades, :clubs, :diamonds]
      if valid_suits.include?(suit) == false
      raise ArgumentError.new("Invalid Suit")
      end
  end

  def value_error(value)
    if (1..13).include?(value) == false
      raise ArgumentError.new("Invalid Value")
    end
  end

  def to_s
    case
    when value == 1
      return "Ace of #{suit.to_s}"
    when value == 11
      return "Jack of #{suit.to_s}"
    when value == 12
      return "Queen of #{suit.to_s}"
    when value == 13
      return "King of #{suit.to_s}"
    else
      return "#{value} of #{suit.to_s}"
    end
  end
end
