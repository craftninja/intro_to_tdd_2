require 'odd_even'

describe OddEven do
  it "If the number is even then the program will replace the number in the array with the text 'Even'." do
    odd_even = OddEven.new(10)
    expected = [1,"even",3,"even",5,"even",7,"even",9,"even"]
    actual = odd_even.run.to_a
    expect(actual).to eq expected
  end
  it "If the number is odd, then the program will replace the number in the array with the text 'Odd'."
end