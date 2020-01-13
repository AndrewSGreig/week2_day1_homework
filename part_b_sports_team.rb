class SportsTeam
  attr_accessor :team_name, :players, :coach, :points

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  #getters
  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end


  #setters
  def set_coach(new_coach_name)
      @coach = new_coach_name
  end

  def add_player(new_player)
    @players.push(new_player)
  end



  def check_player(team_array, player_name)
    player_in_team = false
    for player in @players
      if(player == player_name)
        player_in_team == true
      end
    end
    return player_in_team
  end

  def set_points(result)
    if (result == "win")
      @points += 3
    elsif (result == "draw")
      @points += 1
    else
      #defeat so no change to points test_account_balance
    end
  end


end
