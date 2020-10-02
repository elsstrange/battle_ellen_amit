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
    passive_player.reduce_health(10)
  end

  def active_player
    @players[0]
  end

  def passive_player
    @players[1]
  end

  def turnover
    @players.rotate!
  end

  def game_over?
    dead_player?
  end

  def loser
    @players.select { |player| player.dead? } [0]
  end

  private

  def dead_player?
    @players.any? { |player| player.dead? }
  end
end
