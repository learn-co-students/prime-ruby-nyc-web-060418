require 'benchmark'

#If the given number is divisible by any of the numbers from 2 to n, the function will return False

def prime?(number)
    return false if number < 2
    (2..number - 1).each do |x|
        if (number % x) == 0
            return false
        end
    end
    true
end

# reduce the numbers which needs to be checked to the square root of the given number

def prime_alt_1(number)
  return false if number <=1
  max_div = Math.sqrt(number)
  (2..max_div ).each do |x|
    if (number % x)== 0
      return false
    end
  end
  return true
end

times_x = 100000

def test_prime?(times_x)
  count = 0
  (2..times_x).each do |x|
    if prime?(x) == true
      count +=1
    end
  end
  puts "Found #{count} prime numbers in #{times_x}"
end

def test_prime_alt_1(times_x)
  count = 0
  (2..times_x).each do |x|
    if prime_alt_1(x) == true
      count +=1
    end
  end
  puts "Found #{count} prime numbers in #{times_x}"
end

puts Benchmark.measure{test_prime?(times_x)}
puts Benchmark.measure{test_prime_alt_1(times_x)}

# Result
#prime? method:
# Found 9592 Prime numbers in 100000
#  22.580000   0.020000  22.600000 ( 22.616544)
#prime_alt_1 method:
# Found 9592 Prime numbers in 100000
#   0.390000   0.000000   0.390000 (  0.387787)
