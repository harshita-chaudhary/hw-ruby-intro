# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(:+)
end

def max_2_sum arr
  arr.max(2).reduce(:+)
end

def sum_to_n? arr, n
  arr.each { |x|
    return arr.include?(n-x)
  }
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return s =~ /\A(?=[a-z])(?=[^aeiou])/i
end

def binary_multiple_of_4? s
  return s =~ /(^[01]*00|^0)$/
end

# Part 3

class BookInStock
  
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @price = price
    @isbn = isbn
  end

  def price_as_string
    "$%.2f" % @price
  end
  
end