# Compute sum of cubes for given range

# Problem Statement

# Compute the sum of cubes for a given range a through b.
# Write a method called sum_of_cubes to accomplish this task
# Example: Given range 1 to 3 the method should return 36

# def sum_of_cubes(a, b) = (a..b).inject(0) { |sum, x| sum += (x**3) }

def sum_of_cubes(a, b) = (a..b).each_with_object([]) { |x, array| array.push(x**3) }.sum

p sum_of_cubes(1, 3)
