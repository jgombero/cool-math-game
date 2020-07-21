class Player
  attr_reader :name
  attr_accessor :life, :turn

  def initialize(name = "Anonymous Player")
    @name = name
    @life = 3
    @turn = true  # Turns could be implemented better (array of players, shift and push after each turn?)
  end
end
