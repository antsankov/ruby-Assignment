class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

class Rps_class
	
	# def validchoices(a,b)
	# 	if (!VALID_CHOICES.include?(a))
	# 		return false

	# 	elsif (!VALID_CHOICES.include?(b))
	# 		return false

	# 	else
	# 		return true
	# end 
	
	def rps_game_winner(game)
		raise WrongNumberOfPlayersError unless game.length == 2
		/raise NoSuchStrategyError unless validchoices(person_1[1])/

		person_1 = game[0]
		person_2 = game[1]

		
		if (person_1[1] == "S" && person_2[1] == "P")
			return person_1
		
		elsif (person_1[1] == "R" && person_2[1] == "S")
			return person_1
		
		elsif (person_1[1] == "P" && person_2[1] == "R")
			return person_1
	    
		elsif (person_2[1] == "S" && person_1[1] == "P")
			return person_2
		
		elsif (person_2[1] == "R" && person_1[1] == "S")
			return person_2

		elsif (person_2[1] == "P" && person_1[1] == "R")
			return person_2

		else 
			return person_1
		end
	end 

	# def tournament(players)
	# 	still_in = players

	# 	for i in 0 .. size.still_in()
	# 		puts i
	# end
	
end

rps_game_object = Rps_class.new()
game_1 = rps_game_object.rps_game_winner([ ["Armando", "R"], ["Dave", "S"] ])
game_2 = rps_game_object.rps_game_winner([ ["Armando", "P"], ["Dave", "S"] ])
game_3 = rps_game_object.rps_game_winner([ ["Armando", "P"], ["Dave", "P"] ])
puts game_1
puts game_2
puts game_3
