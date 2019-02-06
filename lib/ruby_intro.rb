# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  summation = 0
  if arr.size == 0
    return 0
  else
    arr.each do |temp|
      summation += temp
    end
    return summation
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    temp = arr.sort
    return temp[temp.size - 1] + temp[temp.size - 2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  count = 0
  sum = 0
  (0...arr.size-1).each do |item1|
    (item1+1...arr.size).each do |item2|
      sum = arr[item1] + arr[item2]
      if sum == n
        count = 1
      end  
    end  
  end
  if count == 1
    return true
  else
    return false
  end  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  elsif (s !~ /^([Aa]|[Ee]|[Ii]|[Oo]|[Uu]|[^a-zA-Z])/)
    return true
  else
    return false
  end  
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  temp = s.to_i(2)
  if s.length == 0
    return false
  elsif (s =~ /[^0-1]/)
    return false
  elsif (temp % 4 == 0)
    return true
  else
    return false
  end    
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
      @isbn = isbn
      @price = price
      if (@isbn.length == 0)
        raise ArgumentError.new("ISBN number should not be an empty string!")
      end
      if (@price <= 0)
        raise ArgumentError.new("Price has to be greater than Zero!")  
      end  
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
  def price_as_string
    return "$%.2f" % @price
  end  
end
