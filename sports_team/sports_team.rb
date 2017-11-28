class SportsTeam
  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def check_player?(player)
    @players.include?(player)
  end

  def game_result_points(result)
    if result.downcase == "win"
      @points += 1
    end
  end

end
