Class Player
  attr_accessor :name :lives
  
  def initialize(name)
    self.name = name
    self.lives = 3
  end

  def lost?
    self.lives -= 1
  end

end


Class Game
end

Class Question
end