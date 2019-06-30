# Fibonacci Sequence Challenge

I this challenge I’ll write a ruby script to generate the Fibonacci sequence for a given number.

I’ll implement this solutions using recursion and iteration. I’ll then benchmark the solution to see which one is more efficient.

## What Is a Fibonacci Number

In mathematics, the Fibonacci numbers, commonly denoted Fn from a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1.

>Fib(0) = 0
>
>Fib(1) = 1
>
>Fib(n) = Fib(n-1) + Fib(n-2)

To list out the first 10 digits in the sequence, we'd get:

```bash
0, 1, 1, 2, 3, 5, 8, 13, 21, 34
```

## Recursive Solution

Build a method called recursive_fib that solves this problem by using a recursive solution. That means your solution to the problem should involve a function that calls itself.

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

It was only tested using ruby 2.5.3p105 (2018-10-18 revision 65156) [x86_64-linux].
