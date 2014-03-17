class StringCalc
  def initialize(deliminator = ",")
    @deliminator = deliminator
  end
  def add(string_to_sum)
    sum = 0
    if string_to_sum == ""
      sum
    else
      string_to_sum_array = string_to_sum.split(@deliminator)
      string_to_sum_array.each do |num|
        sum+=num.to_i
      end
    end
    sum
  end

end