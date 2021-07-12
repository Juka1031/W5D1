require 'byebug'
class HashSet
  attr_reader :count

  def initialize(num_buckets = 8)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
    @set = Set.new
  end

  def insert(key)
    if @store[(key.hash % @store.length)].empty? #bucket is empty we may add element
        @store[(key.hash % @store.length)] << key
        @set.add(key)
        @count +=1
    else #bucket is not empty we may not add element and we have to resize!
        resize!
        insert(key)
    end
  end

  def include?(key)
    @store.include?([key])
  end

  def remove(key)
    if @store.include?([key])
        @store.delete([key])
        @set.delete(key)
        @count -= 1
    end
  end

  private

  def [](num)
    @store[num]
  end

  def num_buckets

  end

  def resize!
    # debugger
    @store += (Array.new(@store.length)  { Array.new })
    
  end
end
