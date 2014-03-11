require "fizz_buzz"
require "rspec/core"

describe FizzBuzz do
  it "will return an array replacing mult of 3 with Fizz, 5 with Buzz, 3 and 5 with FizzBuzz" do
    @fizzbuzz = FizzBuzz.new(15)
    expect(@fizzbuzz.arrayify).to eq [1,2,"Fizz",4,"Buzz","Fizz",7,8,"Fizz","Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]
  end
end