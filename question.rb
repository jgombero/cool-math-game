class Question

  # Initializes 2 random numbers and a random operator
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operator = ['+', '-'].sample
  end

  # returns question string
  def question
    "What is #{@num1} #{operator_to_string[@operator]} #{@num2}?"
  end

  # returns correct answer to question
  def answer
    operators[@operator].call
  end

  private

  # Converts the operator to string
  def operator_to_string
    {
      "+" => 'plus', 
      "-" => 'minus'
    }
  end

  # Hash for operator expressions
  def operators
    {
      "+" => -> {@num1 + @num2},
      "-" => -> {@num1 - @num2}
    }
  end

end