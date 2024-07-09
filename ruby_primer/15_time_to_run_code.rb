# Time to run code

# Problem Statement

# You are given some code in the form of lambdas.

# Measure and return the time taken to execute that code.

# You may use Time.now to get the current time.

def exec_time(proc)
  begin_time = Time.now
  p proc.call
  "#{((Time.now - begin_time) * 60).round(4)} seconds"
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p exec_time(-> { array.find { _1 == 5 } })
p exec_time(-> { array[4] })
