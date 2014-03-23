require 'numeric_calc'

describe NumericCalc do
  it "adds 4 and 5" do
    calculator = NumericCalc.new
    actual = calculator.add(4,5)
    expected = 9
    expect(actual).to eq expected
  end
  it "subtracts 3 from 9" do
    calculator = NumericCalc.new
    actual = calculator.subtract(9,3)
    expected = 6
    expect(actual).to eq expected
  end

end