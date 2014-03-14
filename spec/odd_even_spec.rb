require 'odd_even'

describe OddEven do
  it "The class will return the numbers starting with 1 and ending with the number that it was initialized with when the run method is called." do
    odd_even = OddEven.new(5)
    expected = [1,2,3,4,5]
    actual = odd_even.run.to_a
    expect(actual).to eq expected
  end
  it "For example, if I pass in 10, then the program will return an array containing 1 through 10." do
    odd_even = OddEven.new(10)
    expected = [1,2,3,4,5,6,7,8,9,10]
    actual = odd_even.run.to_a
    expect(actual).to eq expected
  end
  it "If the number is even then the program will replace the number in the array with the text 'Even'."
  it "If the number is odd, then the program will replace the number in the array with the text 'Odd'."
end