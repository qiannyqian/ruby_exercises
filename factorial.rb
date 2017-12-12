def factorial_iterative(number)
  if number == 0 || number == 1
    return 1
  else
    product = 1
    (2..number).each do |num|
      product = product * num
    end
    return product
  end
end

p factorial_iterative(3)

def factorial_recursive(number)
  if number == 0 || number == 1
    return 1
  else
    number * factorial_recursive( number - 1 )
  end
end

p factorial_iterative(3)
