class Player
  SCORE = 60

  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = SCORE)
    @name = name
    @hitpoints = hitpoints
  end

  def attacked(damage = 10)
    @hitpoints -= damage
  end

end
