#ATM
balance = 50

command = ARGV[0]
input = ARGV[1].to_i

if command == "add"
  new_balance = balance + input
  puts "Your new balance is #{new_balance} dollars"
elsif command == "minus"
  new_balance = balance - input
  puts "Your new balance is #{new_balance} dollars"
else
  puts "Your balance is #{balance} dollars"
end

#Calculator
a = ARGV[0].to_i
b = ARGV[2].to_i

operator = ARGV[1]

if operator == "+"
  puts a + b
elsif operator == "-"
  puts a - b
elsif operator == "x"
  puts a * b
elsif operator == "/"
  puts a / b
else
  puts "Not a valid request"
end
