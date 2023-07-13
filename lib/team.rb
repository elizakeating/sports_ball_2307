class Team
  attr_reader :name,
              :city,
              :roster,
              :player_count
  
  def initialize(name, city)
    @name = name
    @city = city
    @roster = []
  end

  def player_count
    @roster.size
  end

  def add_player(player)
    @roster << player
  end
end