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

  def long_term_players
    long_contract = @roster.select do |player|
      player if player.contract_length/12 > 2
    end
    long_contract_sorted = long_contract.sort_by do |player|
      player.contract_length
    end
  end

  def short_term_players
    short_contract = @roster.select do |player|
      player if player.contract_length/12 <= 2
    end
    short_contract_sorted = short_contract.sort_by do |player|
      player.contract_length
    end
  end

  def total_value
    tot_value = 0
    @roster.each do |player|
      tot_value += player.total_cost
    end
    tot_value
  end

  def details
    {"total_value" => self.total_value, "player_count" => @roster.size}
  end

  def players_by_last_name
    last_names = @roster.map do |player|
      player.last_name
    end
    last_names_sorted = last_names.sort
    
    last_names_sorted.join(", ")
  end

  def average_cost_of_player
    tot_value = 0
    @roster.each do |player|
      tot_value += player.total_cost
    end
    tot_value

    average = tot_value/@roster.count.to_s
  end
end