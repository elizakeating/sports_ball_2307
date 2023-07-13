require './lib/player'
require './lib/team'

RSpec.describe Team do
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team).to be_a(Team)
  end

  it 'has a roster' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.roster).to eq ([])
  end

  it 'has a player count' do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.player_count).to eq(0)
  end

  it 'adds players to roster' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team).to be_a(Team)

    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    expect(player_1).to be_a(Player)

    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    expect(player_2).to be_a(Player)

    team.add_player(player_1)
    team.add_player(player_2)

    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
  end
end