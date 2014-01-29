# Part4: RPS
CHOICE_R = "R" #defines these choices
CHOICE_P = "P"
CHOICE_S = "S"
VALID_CHOICES = [CHOICE_R, CHOICE_P, CHOICE_S] #makes a valid choices list
class WrongNumberOfPlayersError <  StandardError ; end #checks if players work
class NoSuchStrategyError <  StandardError ; end  #repeats standard error
def make_game(a, achoice, b, bchoice)
    raise NoSuchStrategyError unless VALID_CHOICES.include?(achoice) #make a game with the choices unless there is an error
    raise NoSuchStrategyError unless VALID_CHOICES.include?(bchoice)
    game = [[a, achoice], [b, bchoice]]
    return game
end

def make_tournament_game(astrat, bstrat)
    raise WrongNumberOfPlayersError unless astrat.length == 2 #makes a torunament unless there is an issue with the classes
    raise WrongNumberOfPlayersError unless bstrat.length == 2
    return make_game(astrat[0], astrat[1], bstrat[0], bstrat[1])
end

def rps_game_winner()
    rps_game_winner(@game) 
end

def rps_game_winner(game)
    #if more than two players are in the game, raise error
    raise WrongNumberOfPlayersError unless game.length == 2
    achoice = game[0][1] #checks  what a choice is 
    bchoice = game[1][1] # checks b choice
    if beats?(achoice, bchoice)  #checks who wins
        return game[0]
    else
        return game[1]
    end
end

#returns the depth of a nested array
def depth (a)
  return 0 unless a.is_a?(Array)
  return 1 + depth(a[0])
end

    #returns true if a beats b
    #expects a != b
def beats?(a, b)
    raise NoSuchStrategyError unless VALID_CHOICES.include?(a)
    raise NoSuchStrategyError unless VALID_CHOICES.include?(b)
    #in the case of a tie, player a wins
    if(a == b)
        return true
    end
    case a
        when CHOICE_R
            if b == CHOICE_S
                return true
            end
            return false
        when CHOICE_P
            if b == CHOICE_R
                return true
            end
            return false
        when CHOICE_S
            if b == CHOICE_P
                return true
            end
            return false
        raise NoSuchStrategyError
    end
end

def rps_tournament_winner(tournament)
    #In this case, the error occurs if the tournament bracket is not in the form 2^n
    raise WrongNumberOfPlayersError unless tournament.length == 2
    #determines the depth of the tournament.
    depth = depth(tournament)
    #if the tournament has more branches to finish, it will finish them recursively
    if(depth > 2)
        game_a = tournament[0]
        game_b = tournament[1]
        winner_a = rps_tournament_winner(game_a)
        winner_b = rps_tournament_winner(game_b)
        return rps_game_winner(make_tournament_game(winner_a, winner_b))
    end
    return rps_game_winner(tournament)
end


tournament = [

    [

        [ ["Armando", "P"], ["Dave", "S"] ],

        [ ["Richard", "R"],  ["Michael", "S"] ],

    ],

    [

        [ ["Allen", "S"], ["Omer", "P"] ],

        [ ["David E.", "R"], ["Richard X.", "P"] ]

    ]

]
puts rps_tournament_winner(tournament)

#         def tournament(players)
#                 #go through the players in list, with for loop, play each guy against the next and then add to new array, players out, to recurse with
#                 if (players.length  == 1)
#                         return players
#                 else 
#                         players_out =[]
#                         (players.each_slice(2){|a| players_out.push(rps_game_winner(a))})
#                         #Its splitting up the array and returing Armando & s rather than [Armando,S] 
#                         tournament(players_out)

