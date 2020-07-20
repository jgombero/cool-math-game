require './player.rb'
require './question.rb'

class Game 

  def initialize
    puts "WeLcOmE tO cOoL mAtH gAmEs!!"
    puts "Please enter your name, Player 1:"
    name1 = gets.chomp
    @player1 = Player.new(name1)
    puts "Please enter your name, Player 2:"
    name2 = gets.chomp
    @player2 = Player.new(name2)
    puts "Ok, #{@player1.name} an #{@player2.name}, let the games being!"
  end

end
