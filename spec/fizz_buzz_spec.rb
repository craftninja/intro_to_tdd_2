require "fizz_buzz"
require "rspec/core"

describe FizzBuzz do
  it "will return an array starting with 1 and ending with an entered number" do
    @fizzbuzz = FizzBuzz.new(10)
    expect(@fizzbuzz.arrayify).to eq [1,2,3,4,5,6,7,8,9,10]
  end
end