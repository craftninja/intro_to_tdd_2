require 'angry_dog'

describe AngryDog do
  it "will growl if you poke her" do
    branwyn = AngryDog.new
    expect("grrrrr").to eq branwyn.poke(1)
  end
end