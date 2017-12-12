class Human
  attr_reader :name, :age

  #Instance method
  def initialize
    @name = name
    @age = age
  end

  #Class methods

  def self.category
    puts "All humans are mammals"
  end

  class << self
    def lifespan
      puts "All humans live to a hundred years"
    end
  end

end

bob = Human.new #creates an instance of the class
bob.category # this will not work as you cannot call class methods on objects
bob.lifespan # this will not work as you cannot call class methods on objects

#both of these will work as you are calling the class methods on the class itself
Human.category
Human.lifespan
