class Player
  SCORE = 60

  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = SCORE)
    @name = name
    @hitpoints = hitpoints
  end

  def attacked
    @hitpoints -= 10
  end

end
