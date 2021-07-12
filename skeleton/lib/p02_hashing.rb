class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    if self.empty?
        0
    end
    var = 1
    j = 1
    i = self.length-1
    while i > -1
        var += self[i] * j
        j *= 10
        i -= 1
    end
    var
  end
end

class String
  def hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
