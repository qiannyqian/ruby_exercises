# Example 1
# a. Let's create an array that consists of integers from 1 - 10 by keying in each element
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p array

# b. We could also use an iterator:

array = [] # or Array.new
(1..10).each do |i|
  array << i
end

p array

# c. Since we are creating an array where there's a sequence of numbers, we can also do the following:

p (1..10).to_a

# this works for alphabets too!

p ("a".."z").to_a
p ("A".."Z").to_a

###################################
# Accessing an element in an array and iterating through it

animals = ["cat", "dog", "bear"]  #or %w(cat dog bear)

# What method can we use to find the number of elements or length of this array?
animals.length

# What are the elements of this array?
p animals

# What is the index of cat, dog and bear?
array.index("cat")
array.index("dog")
array.index("bear")


# How can we access the element "cat"?
animals[0]

# How can we access the elements "cat" and "dog" using one line of code?

# Iterate through the array and print out each element
animals.each do |animal|
  p animal
end
