# Number shuffle

# Given a 3 or 4 digit number with distinct digits,
# return a sorted array of all the unique numbers that can
# be formed with those digits.

# Example:
# Given: 123
# Return: [123, 132, 213, 231, 312, 321]

# def number_shuffle(number)
#   digits = number.to_s.split(//)
#   no_of_combinations = digits.map(&:to_i).reduce(:*)
#   combinations = []
#   combinations.push(digits.shuffle.join.to_i) while combinations.uniq.size != no_of_combinations
#   combinations.uniq.sort
# end

def number_shuffle(number) = number.to_s.chars.permutation.map { _1.join.to_i }.sort

p number_shuffle(123)
