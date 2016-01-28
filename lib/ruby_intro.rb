# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
    return 0
  end
  sum = 0
  arr.each {|a| sum += a}
  return sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  return arr.sort.last(2).sum
end

def sum_to_n? arr, n
  if arr.length == 0 && n == 0
    return false
  else
    return arr.permutation(2).any? {|a,b| a + b == n}
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  s.downcase!
  char = s[0]
  if char =~ /[bcdfghjklmnpqrstvwxyz]/
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if (s =~ /[^01]/) || s.empty?
    return false
  else
    num = s.to_i(2)
    puts num
    return num % 4 == 0
  end
  
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError, "Bad ISBN" if isbn.empty?
    raise ArgumentError, "Invalid price" if price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    dec = '%.2f' % @price
    return "$#{dec}"
  end
end
