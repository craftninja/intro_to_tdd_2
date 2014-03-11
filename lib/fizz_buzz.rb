class FizzBuzz

  def initialize (max_num)
    @max_num = max_num
  end

  def arrayify
    fizz_buzz=[]
    i=1
    while i<=@max_num
      fizz_buzz<<i
      i+=1
    end
    fizz_buzz
  end

end
