require 'leap_year'

describe LeapYear do
  it "method called yes? will result leap year or not. 2001 is not a leap year" do
    leap_year_test = LeapYear.new
    expected = false
    actual = leap_year_test.yes?(2001)
    expect(actual).to eq expected
  end
  it "method called yes? will result leap year or not.1996 is a leap year" do
    leap_year_test = LeapYear.new
    expected = true
    actual = leap_year_test.yes?(1996)
    expect(actual).to eq expected
  end

  it "is not leap year if it is divisible by 100 (1900)" do
    leap_year_test = LeapYear.new
    expected = false
    actual = leap_year_test.yes?(1900)
    expect(actual).to eq expected
  end
  it "is leap year if divisible by 400 (2000 is a leap year)"
end