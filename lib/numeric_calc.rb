class NumericCalc
  attr_accessor :number_in_memory
  def initialize
    @number_in_memory = 0
    @number_in_memory
  end
  def add (number_a,number_b)
    number_a+number_b
  end
  def subtract(number_a,number_b)
    number_a-number_b
  end
  def clear
    @number_in_memory = 0
  end

end