require 'benchmark'

def benchmark
  bm = Benchmark.realtime { |i| i }
  bm.round(5)
end

def run
  long_string = "apple"*1000000
  running_time = benchmark { long_string.reverse }
  puts "string.reverse took #{running_time} seconds to run"
end

run
# Be careful, running this code will take a long while to run
# It's a loooong string. :)
# DO NOT run this code when submitting your code to check for challenge completion
