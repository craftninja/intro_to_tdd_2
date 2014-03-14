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

  def delete_pair(key)
    @storage.delete(key)
  end

  def list_keys
    list = []
    @storage.each_key {|key| list << key}
    list
  end

  def clear_all
    @storage.each do |key, value|
      @storage.delete(key)
    end
    @storage

  end
end