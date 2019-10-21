class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{@rank} of #{@suit}"
  end

  #def self.random_card
   # Card.new(rand(10), [:spades, :diamonds, :hearts, :clubs].sample)
  #end
end

class Deck
  def initialize 
    @ranks = [*(2..10), "J", "Q", "K", "A"] #1st subarray, create an array of card ranks 2 through 10 and with the letters j,q,k,and a
    @suits = ['♣', '♥', '♠', '♦'] #2nd subarray create an array of card suits for diamonds, hearts, spades and diamonds
    @cards = [] #initialize an array aka start an empty array, the empty array will store our newly created deck of cards
        @ranks.each do |rank| #iterate over each rank using each method
          @suits.each do |suit| #iterate over each suit using each method
            @cards << Card.new(rank, suit) # create a new Card that has a rank and suit then push the card into the @cards array.
            end             
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end  

  def output
    @cards.each do |card|
      card.output_card
    end
   
  end
    
  
end

deck = Deck.new 
deck.shuffle
deck.deal
deck.output

#Card.random_card.output_card