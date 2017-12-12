# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end

class OrangeTree
  attr_reader :height, :age

  MAX_AGE = 20
  FRUIT_BEARING_AGE = 7

  # Ages the tree one year
  def initialize
    @age = 0
    @height = 0
    @oranges = []
  end

  def age!
    @age += 1
    @height += rand(0.3..0.6)
    rand(10..30).times { @oranges << Orange.new(rand(0.1..0.3)) } if @age > FRUIT_BEARING_AGE
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    @oranges.length > 0
  end

  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?

    # orange-picking logic goes here
    @oranges.pop
  end

  def dead?
    @age >= MAX_AGE
  end
end

class Orange
  attr_reader :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
    @diameter = diameter
  end

end

#######################################################################
## Driver code:

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

  # It places the oranges in the basket
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end


  sum = 0
  basket.each {|orange| sum += orange.diameter}
  avg_diameter = sum/basket.length
  # avg_diameter =  # It's up to you to calculate the average diameter for this harvest.

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  # Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"
