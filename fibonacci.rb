def f_r(n)
  if n < 2
    return n
  else
    return (f_r(n-1) + f_r(n-2))
  end
end


def f_i(n)
  a = 0
  b = 1

  n.times do
    x = a
    a = b
    b = x + b
  end

  return a
end

p f_r(7) == f_i(7)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { f_r(num) }
  x.report("iterative_fib")  { f_i(num)  }
end
