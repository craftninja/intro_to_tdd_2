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
  it "can save the number 7 into memory" do
    calculator = NumericCalc.new
    actual = calculator.number_in_memory =(7)
    expected = 7
    expect(actual).to eq expected
  end
  it "can delete the memory" do
    calculator = NumericCalc.new
    actual = calculator.clear
    expected = 0
    expect(actual).to eq expected
  end
  it "calc is initialized with memory = 0" do
    calculator = NumericCalc.new
    actual = calculator.number_in_memory
    expected = 0
    expect(actual).to eq expected
  end
end