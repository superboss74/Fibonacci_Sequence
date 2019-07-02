# Generate the fibonacci sequence returning the nth digit
# Create this solutions using recursive and iterative methods
def recursive_fib(number)
  _recursive_fib(number, 0, 1)
end

def _recursive_fib(number, first_number, next_number)
  if number.zero?
    first_number
  else
    _recursive_fib(number - 1, next_number, first_number + next_number)
  end
end

def iterative_fib(number)
  first_number = 0
  next_number = 1
  number.times do
    temp = next_number
    next_number = first_number + next_number
    first_number = temp
  end
  first_number
end

puts "recursive solution = #{recursive_fib(9)}"
puts "iterative solution = #{iterative_fib(9)}"

# Benchmark the 2 methods to see which performs better
require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report('recursive_fib') { recursive_fib(num) }
  x.report('iterative_fib') { iterative_fib(num) }
end
