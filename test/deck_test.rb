require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  describe "Initializer" do
    it "can initialize" do
      deck = Deck.new
      expect(deck).must_be_instance_of Deck
    end
  end
  describe "Draw" do
    it "can draw single card" do
      deck = Deck.new
      expect(deck).must_be_instance_of Deck
    end

    it "picks a card" do
      deck = Deck.new
      expect(deck.draw).must_be_instance_of Card
    end
  end

  describe "Shuffle" do
    it "responds to shuffle cards" do
      deck = Deck.new
      expect(deck).must_respond_to :shuffle
    end
  end
end


