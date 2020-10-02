class Player
  DEFAULT_STARTING_HEALTH = 100

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = DEFAULT_STARTING_HEALTH
  end

  def reduce_health(damage)
    @health -= damage
  end

  def dead?
    @health <= 0
  end
end
