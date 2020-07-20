class Player
  attr_reader :name
  attr_accessor :life :turn

  def initialize(name = "Anonymous Player")
    @name = name
    @life = 0
    @turn = false
  end
end
