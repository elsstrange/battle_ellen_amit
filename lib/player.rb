class Player
  DEFAULT_STARTING_HEALTH = 100

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = DEFAULT_STARTING_HEALTH
  end

  def reduce_health
    @health -= 10
  end
end
