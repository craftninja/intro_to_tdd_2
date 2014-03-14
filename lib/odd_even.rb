class OddEven
  def initialize (max_num)
    @max_num = max_num
  end

  def run
    @array = 1.upto(@max_num).to_a
    i=0
    @array.each do |num|
      if num%2==0
        @array[i] = "even"
      else @array[i] = "odd"
      end
      i+=1
    end
    @array
  end

end