class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operator = ['+', '-'].sample
  end

  def question
    "What is #{@num1} #{operator_to_string[@operator]} #{@num2}?"
  end

  def answer
    operators[@operator].call
  end

  private

  def operator_to_string
    {
      "+" => 'plus', 
      "-" => 'minus'
    }
  end

  def operators
    {
      "+" => -> {@num1 + @num2},
      "-" => -> {@num1 - @num2}
    }
  end

end