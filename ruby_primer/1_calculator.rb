# Build a calculator that performs addition and subtraction

# Problem Statement

# Create a class Calculator, which performs addition and subtraction of two numbers at a time.
# The sample code explains the expected API.

class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end
end

calculator = Calculator.new
p calculator.add(1, 2)
p calculator.subtract(2, 1)
