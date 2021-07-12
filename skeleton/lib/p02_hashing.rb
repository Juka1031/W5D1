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
    alph = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
    str = ''
    self.split('').each do |ele|
      if alph.index(ele) > 9
        str += alph.index(ele).to_s
      else
        str += ('0' + alph.index(ele).to_s)
      end
    end
    str.to_i
  end
end

class Hash 
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
    new_hash = self.sort
    key_arr = new_hash
    key_str = ''
    val_str = ''
    str_to_i(key_arr.join('')) 
  end

  def str_to_i(string)
    alph = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
    str = ''
    string.split('').each do |ele|
      if alph.index(ele) > 9
        str += alph.index(ele).to_s
      else
        str += ('0' + alph.index(ele).to_s)
      end
    end
    str.to_i
  end
end
