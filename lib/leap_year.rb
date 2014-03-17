class LeapYear
  def yes?(year)
    year%4==0 && year%100!=0
  end
end