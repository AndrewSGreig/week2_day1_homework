class SportsTeam
  attr_accessor :team_name, :players, :coach

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
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

end
