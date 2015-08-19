require 'pry'

class Coin
	def self.flip
		result = rand()
		if result >= 0.5
			result = 1
		else
			result = -1
		end
		result
	end
end

class Die
	def initialize n
		@sides = n
	end

	def roll
		rand(@sides)+1
	end
end

class Dice
	def initialize dice_requested
		@bag = []
		for request in dice_requested
			request["number"].times do
				@bag << (Die.new request["sides"])
			end
		end
	end
end
binding.pry
