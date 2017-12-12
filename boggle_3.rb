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

  def include?(word)
    word.upcase!
    #diagonal search in arrays
    padding = @board.size - 1
    padded_matrix = []

    @board.each do |row|
      inverse_padding = @board.size - padding
      padded_matrix << ([nil] * inverse_padding) + row + ([nil] * padding)
      padding -= 1
    end

    diagonal_board = padded_matrix.transpose.map(&:compact)

    checkboard = @board.join
    checkboard_t = @board.transpose.join
    checkboard_d = diagonal_board.join

    checkboard.gsub!(" ", "")
    checkboard_t.gsub!(" ", "")
    checkboard_d.gsub!(" ", "")

    if checkboard.include?(word) || checkboard_t.include?(word) || checkboard_d.include?(word)
      p true
    elsif checkboard.reverse.include?(word) || checkboard_t.reverse.include?(word) || checkboard_d.reverse.include?(word)
      p true
    else
      p "Not found"
    end
  end

end

board = Boggleboard.new
puts board
board.shake!
puts board
board.include?("ea")
