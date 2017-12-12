class Boggleboard

  DICE = ['AAEEGN', 'ELRTTY', 'AOOTTW', 'ABBJOO',
          'EHRTVW', 'CIMOTU', 'DISTTY', 'EIOSST',
          'DELRVY', 'ACHOPS', 'HIMNQU', 'EEINSU',
          'EEGHNW', 'AFFKPS', 'HLNNRZ', 'DEILRX' ].map(&:chars) # <= .map and chars seperate each dice into an array, making DICE an array of nested arrays

  def initialize
    @board = Array.new(4) { Array.new(4, "_") }# <= create blank 4x4 grid with "_" to fill spaces
  end

  def shake!
    @board = DICE.shuffle.map { |die| roll(die) }.each_slice(4).to_a # <= shuffle block of dice, for each array do take sample from each array, which will be returned as 1 array full of elements, use each_slice to split array into arrays of 4 elements each, and convert that enumerable into an array
    @board
  end

  def roll(die)
    result = die.sample #<= take a sample from each array/die in the DICE block
    if result == "Q"
      result << "u"
    else
      result
    end
    result.ljust(3)
  end

  def to_s
    boardss = @board.flatten.each_slice(4) { |x| puts x.join(" ") } # <= takes array, flattens it, joins elements of array together with sapce inbetween
    boardss.to_s # <= outputs the above as string
  end

end

board = Boggleboard.new
puts board
board.shake!
puts board
