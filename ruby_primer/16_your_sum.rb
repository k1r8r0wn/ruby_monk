# Your Sum

# Problem Stateme

# Given a custom class MyArray,
# write a 'sum' method that takes a block parameter.

# Example:
# my_array = MyArray.new([1, 2, 3])
# my_array.sum gives 6
# my_array.sum(10) gives 16
# my_array.sum(0) { |n| n ** 2 } gives 14

class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  # def sum(initial_value = 0)
  #   return array.inject(:+) + initial_value unless block_given?

  #   sum = initial_value
  #   array.each { sum += yield(_1) }
  #   sum
  # end

  def sum(initial_value = 0)
    if block_given?
      array.inject(initial_value) { |sum, element| sum + yield(element) }
    else
      array.inject(initial_value, :+)
    end
  end
end

my_array = MyArray.new([1, 2, 3])
p my_array.sum # => 6
p my_array.sum(10) # => 16
p my_array.sum(0) { _1**2 } # => 14
p my_array.sum(1) { _1**2 } # => 15
