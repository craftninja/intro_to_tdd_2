class KeyValueStore
  def initialize
    @storage = {}
  end

  def add_kv_pair (key, pair)
    @storage[key] = pair
  end

  def the_hash
    @storage
  end

  def find_pair(key)
    @storage[key]
  end
end