require "fizz_buzz"
require "rspec/core"

describe FizzBuzz do
  it "will return an array starting with 1 and ending with an entered number, replacing mult of 3 with Fizz" do
    @fizzbuzz = FizzBuzz.new(10)
    expect(@fizzbuzz.arrayify).to eq [1,2,"Fizz",4,5,"Fizz",7,8,"Fizz",10]
  end
end