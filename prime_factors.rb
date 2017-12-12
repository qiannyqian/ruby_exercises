def prime_factors(number)
  divisors = []
  divisor = 2

  while number > 1
    if number % divisor == 0
      number = number / divisor
      divisors << divisor
    else
      divisor += 1
    end
  end

  divisors
end

p prime_factors(8)
p prime_factors(6760)
