# 1. Write a method named 'hide_serial(string)' that accepts a string as an argument that uses the regex for '123456-12-1234' and substitute the first 2 sections with "X" to get "XXXXXX-XX-1234".

def hide_serial(string)
  string.gsub!(/\d{6}-\d{2}/,"XXXXXX-XX")
end

string = "123456-34-5678"

p hide_serial(string)

# 2. Write a method named 'hide_digits(string)' that accepts a string as an argument that substitutes the digits in the sentence "You have 100 dollars" with "-" to get "You have --- dollars".

def hide_digits(string)
  string.gsub!(/\d/,"-")
end

string = "You have 1000 dollars"

p hide_digits(string)

# 3. Write a method named 'hide_last_four(string)' that accepts a string as an argument and substitutes the last 4 digits with "*" in this string: "12-34-5678, 90-80-7012, 45-65-1234" to get "12-34-****, 90-80-****, 45-65-****".

def hide_last_four(string)
  string.gsub!(/-\d{4}/,"-****")
end

string = "12-34-5678, 90-80-7012, 45-65-1234"

p hide_last_four(string)
