require './player.rb'
require './question.rb'

class Game 

  def initialize

  end


  # Grabs player names
  def names 
    puts "WeLcOmE tO cOoL mAtH gAmEs!!"
    puts "Please enter your name, Player 1:"
    name1 = gets.chomp
    @player1 = Player.new(name1)
    puts "Please enter your name, Player 2:"
    name2 = gets.chomp
    @player2 = Player.new(name2)
    puts "Ok, #{@player1.name} and #{@player2.name}, let the cool games being!"
  end


  # Creates question then checks it against the answer
  def play
    question
    check_answer
  end


  # Creates new Question instance and puts the question
  def question
    question = Question.new
    @math_question = question.question
    @answer = question.answer

    puts "----- NEW TURN ----"

    if @player1.turn
      puts "#{@player1.name}: #{@math_question}"
    else
      puts "#{@player2.name}: #{@math_question}"
    end
  end


  # Checks if answer is correct, if not decrements player's life by 1
  def check_answer
    if $stdin.gets.chomp.to_i == @answer
      puts "YES! You are correct."

      if @player1.turn
        @player1.turn = false
        @player2.turn = true
      else
        @player2.turn = false
        @player1.turn = true
      end

    else
      puts "Seriously? No!"

      if @player1.turn
        @player1.life -= 1
        @player1.turn = false
        @player2.turn = true
      else
        @player2.life -= 1
        @player2.turn = false
        @player1.turn = true
      end
    end

    print_life
    game_over?
  end


  # Prints each players life
  def print_life
    puts "#{@player1.name}: #{@player1.life}/3 vs #{@player2.name}: #{@player2.life}/3"
  end


  # Checks if game is over, if not, starts another turn
  def game_over?
    if @player1.life == 0
      puts "#{@player2.name} wins with a score of #{@player2.life}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"

    elsif @player2.life == 0
      puts "#{@player1.name} wins with a score of #{@player1.life}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      
    else
      play
    end
  end

end
