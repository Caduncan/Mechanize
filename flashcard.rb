class Application
  def initialize
    @decks = []
  end
  
  def << deck
    @decks << deck
  end
  
  def play
    display_decks
    puts "Pick a deck: "
    deck = get_deck
    deck.play
  end

  def display_decks
    @decks.each do |deck|
      puts deck.name
    end
  end
  
  def get_deck
    name = gets.chomp
    @decks.detect do |deck|
      deck.name == name
    end
  end
end
   
class Card
  
  attr_accessor :front, :back

  def initialize(front, back)
    @front = front
    @back = back
  end
  
  def correct? guess
  guess == @back
  end
  
  def play
    puts "#{front} > "
    guess = gets.chomp
    if correct? guess
      puts "Correct"
    else
      puts "Incorrect. The answer was #{back}"
    end
  end
end

class MultibleAnswerCard
#To be done in my next commit 09/08 1:11:46
end

class Deck
  attr_reader :name, :cards 
  
  def initialize name
    @name = name
    @cards = []
  end
 
  def << card
    @cards << card
  end
 
  def play
    shuffle
    @cards.each do |card|
    card.play
    end
  end
  
  def shuffle
    @cards.shuffle!
  end
end
 
card1 = Card.new("cat", "neko")
card2 = Card.new("dog", "inu")
card3 = Card.new("snake","hebi")

deck = Deck.new("Japanese")
deck << card1
deck << card2
deck << card3

deck.shuffle

deck2 = Deck.new("Russian")
app = Application.new
app << deck
app << deck2
app.play
