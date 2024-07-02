# Kaprekar's Number

# Problem Statement

# 9 is a Kaprekar number since
# 9 ^ 2 = 81 and 8 + 1 = 9

# 297 is also Kaprekar number since
# 297 ^ 2 = 88209 and 88 + 209 = 297.

# In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1
# digits, the resultant sum is k.

# Find if a given number is a Kaprekar number.

def kaprekar?(k)
  number_of_digits = k.to_s.size # 3
  square = (k**2).to_s # 998_001

  first_half = square.size.even? ? square[0..number_of_digits - 1] : square[0..number_of_digits - 2] # 998
  second_half = square[-number_of_digits..] # 001

  k == first_half.to_i + second_half.to_i # 998_001
end

p kaprekar?(999) # => true
