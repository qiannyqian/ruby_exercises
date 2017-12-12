# def to_roman(input)
#   return "Number not in range" if input > 3000 || input < 1
#   numerals = {
#     1000 => 'M',
#     500 => 'D',
#     100 => 'C',
#     50 => 'L',
#     10 => 'X',
#     5 => 'V',
#     1 => 'I'
#   }
#
#   multiplier = input
#   numeral = []
#
#   numerals.each do |num, sym|
#     numeral.push(sym * (multiplier/num))
#     multiplier = multiplier % num
#   end
#
#   return numeral.join
#
# end
#
# puts to_roman(1646)

# Drive code... this should print out trues.

# puts to_roman(1) == "I"
# puts to_roman(3) == "III"
# puts to_roman(6) == "VI"

##

def to_roman(num)

  rome = ""

  #FOR ADDING "M"
  if num >= 1000
    x = num/1000
    rome += "M" * x
    num = num % 1000
  end

  #FOR ADDING "CM"
  if num >= 900 && num < 1000
    x = num/900
    rome += "CM" * x
    num = num % 900
  end

  #FOR ADDING "D"
  if num >= 500
    x = num/500
    rome += "D" * x
    num = num % 500
  end

  #FOR ADDING "CD"
  if num >= 400 && num < 500
    x = num/400
    rome += "CD" * x
    num = num % 400
  end

  #FOR ADDING "C"
  if num >= 100
    x = num/100
    rome += "C" * x
    num = num % 100
  end

  #FOR ADDING "XC"
  if num >= 90 && num < 100
    x = num/90
    rome += "CD" * x
    num = num % 90
  end

  #FOR ADDING "L"
  if num >= 50
    x = num/50
    rome += "L" * x
    num = num % 50
  end

  if num >= 10 && num < 50
    #FOR ADDING "XL"
    if (50 - num) <= 10
      rome += "XL"
      num = num % 10
    #FOR ADDING "X"
    else
      x = num/10
      rome += "X" * x
      num = num % 10
    end
  end

  if num >= 5 && num < 10
    if num == 9
      rome += "IX"
    else
      x = num/5
      rome += "V" * x
      num = num % 5
    end
  end

  if num < 5
    if num == 4
      rome += "IV"
    else
      rome += "I" * num
    end
  end

  return rome

end

p to_roman(2999)
