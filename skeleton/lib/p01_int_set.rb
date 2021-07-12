class MaxIntSet
  attr_reader :set, :max
  attr_accessor :store

  def initialize(max)
    @max = max
    @set = Set.new
    @store = Array.new(max, false)
  end

  def insert(num)
    if num <= max && num > -1
      set.add(num)
      store[num] = true
    else 
      raise "Out of bounds"
    end
  end

  def remove(num)
    set.delete(num)
    store[num] = false
  end

  def include?(num)
    set.include?(num)
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  attr_accessor :set
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @set = Set.new
  end

  def insert(num)
    n = num % num_buckets
    set.add(num)
    @store[n] << num
    # p set 
    # p @store
  end

  def remove(num)
    set.delete(num)
  end

  def include?(num)
    set.include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  # attr_reader :count
  attr_accessor :set, :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
    @set = Set.new
  end

  def insert(num)
    @count += 1 if !set.include?(num)
    set.add(num) 
  end

  def remove(num)
  end

  def include?(num)
    set.include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
