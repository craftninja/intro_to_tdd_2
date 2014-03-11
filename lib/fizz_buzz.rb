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
    i=0
    while i<@max_num
      fizz_buzz[i] = "Fizz" if fizz_buzz[i] % 3 == 0
      fizz_buzz[i] = "Buzz" if fizz_buzz[i] % 5 == 0
      i+=1
    end
    fizz_buzz
  end

end
