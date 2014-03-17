require 'string_calc'

describe StringCalc do
  it "has a method add that returns 0 when passed an empty string" do
    calc = StringCalc.new
    expected = 0
    actual = calc.add("")
    expect(actual).to eq (expected)
  end

  it "returns the sum of the numbers in the string, like 1 for '1'" do
    pending
    calc = StringCalc.new
    expected = 1
    actual = calc.add("1")
    expect(actual).to eq (expected)
  end
  it "returns 10 If the string '1, 2, 7 ' is passed" do
    pending
    calc = StringCalc.new
    expected = 10
    actual = calc.add("1, 2, 7")
    expect(actual).to eq (expected)
  end
  it "can specify a delimiter at initialization time." do
    pending
    calc = StringCalc.new(";")
    expected = 10
    actual = calc.add("1; 2; 7")
    expect(actual).to eq (expected)
  end
end