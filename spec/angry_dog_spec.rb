require 'angry_dog'

describe AngryDog do
  it "will growl if you poke her" do
    branwyn = AngryDog.new
    expect("grrrrr").to eq branwyn.poke(1)
  end
  it "will bark if you poke her three times" do
    branwyn = AngryDog.new
    expect("woof!").to eq branwyn.poke(3)
  end
end