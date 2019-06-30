# Fibonacci Sequence Challenge

I this challenge I will write a ruby script to generate teh Fibonacci sequence for a given number.

I will implement this solutions using recursion and iteration. I will then benchmark the solution to see wich one is more efficient.

## What is a Fibonacci number

In mathematics, the Fibonacci numbers, commonly denoted Fn form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1.

>fib(0) = 0
>
>fib(1) = 1
>
>fib(n) = fib(n-1) + fib(n-2)

To list out the first 10 digits in the sequence, we'd get:

```bash
0, 1, 1, 2, 3, 5, 8, 13, 21, 34
```

## Recursive Solution

Build a method called recursive_fib that solves this problem by using a recursive solution. That means your solution to the problem should involve a function that calls itself. This is tricky!

## Iterative Solution

Build a method called iterative_fib that builds a table of Fibonacci numbers one-by-one like we walked you through earlier. After you build the entire sequence of numbers up to n digits, just return the last value.

## Benchmarks

With both of your solutions, calculate the 35th value in the Fibonacci sequence.

Use the ruby [Benchmark](http://ruby-doc.org/stdlib-1.9.3/libdoc/benchmark/rdoc/Benchmark.html) opens in new tab module to test how each of the different solutions performs. Which do you think will have better performance and why?

The following code at the bottom of your script will benchmark both algorithms and show you how long they take to perform.

```ruby
require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
```

## My Solution

1. Clone or download this Repository
2. `cd` into the clone or downloaded repository
3. Open Terminal and run

```ruby
ruby fibonacci.rb
```

It was only tested using ruby 2.5.3p105 (2018-10-18 revision 65156) [x86_64-linux]
