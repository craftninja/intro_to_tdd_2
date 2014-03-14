require 'odd_even'

describe OddEven do
  it "If the number is odd, then the program will replace the number in the array with the text 'Odd'." do
    odd_even = OddEven.new(10)
    expected = ["odd","even","odd","even","odd","even","odd","even","odd","even"]
    actual = odd_even.run.to_a
    expect(actual).to eq expected
  end
end