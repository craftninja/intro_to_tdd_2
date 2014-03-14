require "rspec/core"
require "key_value_store"

describe KeyValueStore do

  it "Allows the user to add a value stored under a key" do
    @its_a_hash = KeyValueStore.new
    @its_a_hash.add_kv_pair("some key", "some pair")
    @its_a_hash.add_kv_pair("another key", "another pair")


    expect(@its_a_hash.the_hash["some key"]).to eq "some pair"
  end
  it "Allows the user to delete a single key/value pair" do
    @its_a_hash = KeyValueStore.new
    @its_a_hash.add_kv_pair("some key", "some pair")
    @its_a_hash.add_kv_pair("another key", "another pair")

    @its_a_hash.delete_pair("some key")
    expect(@its_a_hash.the_hash["some key"]).to eq nil


  end
  it "Allows the user to get a list of all the keys" do
    @its_a_hash = KeyValueStore.new
    @its_a_hash.add_kv_pair("some key", "some pair")
    @its_a_hash.add_kv_pair("another key", "another pair")


    expect(@its_a_hash.list_keys).to eq ["some key", "another key"]
  end
  it "Allows the user to clear the store of all keys"
end