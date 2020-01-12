# Deck of cards_object Oriented Programing

An object oriented program is developed to compile a data representation of a deck of cards. The goal is to create a deck of cards, each card would have a suit and a rank. Using a looping technique, deal a card, print the dealt card and the number of cards left after a card is dealt on the terminal window. The loop continues until all 52 cards have been dealt.  

![Deck of Cards in terminal window](/images/DeckofCardsTerminalscreenshot.png)


## Tools 

Sublime Text Editor

PuTTY

Git 

GitHub


## Description of how the code works

A class is defined as Card. Inside the class Card, code related to a playing card are entered, these include the attr accessor, def initialize and def output_card methods. 

The method attr_accessor :rank, :suit is defined first. The attr_accessor functions as a gettor and setor to allow users to get or change the values of the rank and suit.

The method def initialize(rank, suit) is defined next. The initialize method, also known as a constructor, builds up characteristics of a card. The passed arguments, rank and suit, being the attributes/characteristic of a card. Inside the initialize method rank and suit are stored in instance variables, @rank and @suit. This allow accessibility of the variables outside the initialize method.  

def output_card method allows the value stored inside the variable @rank and @suit to be displayed in the string "#{@rank} of #{@suit}".

A class Deck is defined next. Methods related to a deck of cards are defined within the class.

An attr_reader is defined to function as a gettor that allows users to get the values of the deck of cards.

Inside the def initialize method the attributes of a card, rank and suit, are described. Rank values of cards in a deck are identified as numbers 2 through 10 or letters "J", "Q", "K", or "A". The list of the rank values are stored in an array with the assigned variable name @ranks. Within the same method, a collection of suit values, identified as '♣', '♥', '♠', '♦' that would be in a deck of cards, are stored in an array with a variable name @suit. An empty array @cards = [] is also initialized. Next we iterate through each item in the array @ranks, then iterate through each item in the array @suits, create a new card with a rank and suit then store the new card in the array @cards. The loop continues until every single card in the deck of cards has been created, a total of 52 cards.    

A card is dealt using the def deal method whereby shift takes the top card and pulls it off the deck, removing it from the array @cards. The def remaining method keeps track of how many cards have not been dealt, the number of remaining cards is printed. When the code inside def output is executed, each dealt card is printed as iteration through the array @cards progresses. 

The code deck = Deck.new creates a new deck also known as instance of the class Deck. Next a while loop is developed to iterate through the cards in a deck. The method remaining is called and the number of cards that have not been dealt is printed on the terminal window. Next a card with a suit and rank is printed when deck.cards.first.output_card is called. The top card is dealt when the method def deal is called. The while loop continues until all cards in the deck have been dealt/ until the array @cards in empty.

## View the completed code in the link provided below

[Card Deck_object Oriented Program](https://github.com/OwitiDessy/ObjectOrientedProgram/blob/master/CardDeckRevised.rb)
