
class Player 
	attr_accessor :choice
	attr_reader :name 

	def initialize(n)
		@name= n
end 

class Human< Player 
	def pick_hand
	end 

end 

class  Computer <Player
	def pick_hand 
		self.choice = Game::Choices.keys.sample
	end 
end

class Game

		CHOICES = { 'p' => 'Paper', 'r', => 'Rock', 's' => 'Scissors'}
	attr_reader :player, :computer

def inititialize
	@plaer = Human.new("Bob")
	@computer = Computer.new("R2D2")
end 


def play 
	player.pick_hand 
	computer.pick_hand 
	computer_hands
end 

end

game= Game.new.play 