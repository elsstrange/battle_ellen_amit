require_relative 'player'

class Game
  attr_reader :player_one, :player_two

  def initialize(player_one_name, player_two_name, player: Player)
    @player = player
    @player_one = @player.new(player_one_name)
    @player_two = @player.new(player_two_name)
    @players = [@player_one, @player_two]
  end

  def attack
    passive_player.reduce_health
    @players.rotate!
  end

  def active_player
    @players[0]
  end

  def passive_player
    @players[1]
  end

  private

  def turnover
    @players.rotate!
  end
end
