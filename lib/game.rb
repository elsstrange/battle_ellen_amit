class Game

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack_player_2
    @player2.attacked
    # @player2.hitpoints -= 10
    # @player2.reduce_hitpoints(10)
  end

  def attack_player_1
    @player1.attacked
  end
end
