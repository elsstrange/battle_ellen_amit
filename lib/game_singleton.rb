class Game

  attr_reader :player1, :player2
  
  def self.create(player1, player2)
    if @game.nil?
      @game = self.new(player1, player2)
    end
  end

  def self.instance
    @game
  end

  def attack_player_2
    @player2.attacked
    # @player2.hitpoints -= 10
    # @player2.reduce_hitpoints(10)
  end

  def attack_player_1
    @player1.attacked
  end

  private

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
end
