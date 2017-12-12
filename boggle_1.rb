class Boggleboard

  def initialize
    @board = Array.new(4) { Array.new(4, '-') }
  end

  def shake!
    4.times do
      @board.map! { [*('A'..'Z')].sample(4).to_a }
    end
  end

  def to_s
    boardss = @board.flatten.each_slice(4) { |x| puts x.join(" ") }
    boardss.to_s
  end

end

board = Boggleboard.new
puts board
board.shake!
puts board
