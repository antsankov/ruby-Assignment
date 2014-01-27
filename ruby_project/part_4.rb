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
			return game[0]
		
		elsif (person_1[1] == "R" && person_2[1] == "S")
			return game[0]
		
		elsif (person_1[1] == "P" && person_2[1] == "R")
			return game[0]
	    
		elsif (person_2[1] == "S" && person_1[1] == "P")
			return game[1]
		
		elsif (person_2[1] == "R" && person_1[1] == "S")
			return game[1]

		elsif (person_2[1] == "P" && person_1[1] == "R")
			return game[1]

		else 
			return game[0]
		end
	end 

	def tournament(players)
		#go through the players in list, with for loop, play each guy against the next and then add to new array, players out, to recurse with
		if (players.length  == 1)
			return players
		else 
			players_out =[]
			(players.each_slice(2){|a| players_out.concat(rps_game_winner(a))})
			#Its splitting up the array and returing Armando & s rather than [Armando,S] 
			puts players_out
		end
			
	end
	
end

rps_game_object = Rps_class.new()
game_1 = rps_game_object.rps_game_winner([ ["Armando", "R"], ["Dave", "S"] ])
game_2 = rps_game_object.rps_game_winner([ ["Armando", "P"], ["Dave", "S"] ])
game_3 = rps_game_object.rps_game_winner([ ["Armando", "P"], ["Dave", "P"] ])

#puts game_1

rps_game_object.tournament([ ["Armando", "R"], ["Dave", "S"], ["JAMES", "P"], ["ARNOLD", "S"] ])
