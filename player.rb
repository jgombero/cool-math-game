class Player
  attr_reader :name
  attr_accessor :life :turn

  def initialize(name = "Loser that didn't enter a name")
    @name = name
    @life = 0
    @turn = false
  end
end
