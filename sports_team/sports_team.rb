class SportsTeam
  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def add_player(new_player)
    @players.push(new_player)
  end

end
