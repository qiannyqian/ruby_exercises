# Implement the #linear_search method
def linear_search(value, array)
  i = 0
  while i < array.length
    if array[i] == value
      return i
    else
      i += 1
    end
  end
end

random_numbers = [6, 29, 18, 2, 72, 19, 18, 10, 37]

p linear_search(72, random_numbers)

# Implement the #global_linear_search method

# array.each_index.select{|i| array[i] == value}
def global_linear_search(value, array)
  new_array = []
  i = 0

  while i < array.length
    if array[i] == value
      new_array << i
    end
    i += 1
  end

  new_array
end

bananas_arr = "bananas".split(//)
p global_linear_search("a", bananas_arr)
