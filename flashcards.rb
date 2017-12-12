class Flashcard
  attr_accessor :term, :definition

  def initialize(term, definition)
    @term = term
    @definition = definition
  end
end

class FileParser
  attr_accessor :flashcard_box

  def initialize(file)
    @flashcards = []

    File.open(file, 'r') do |file|
      file.each_line do |row|
        if row.chomp != ""
          @flashcards << row.chomp
        end
      end
    end

    @flashcard_box = []

    @flashcards.each_slice(2) do |x|
      @flashcard_box << Flashcard.new(x[1], x[0])
    end

    @flashcard_box
  end
end

class Game
  def initialize
    @flashcard_box = FileParser.new('flashcards.txt').flashcard_box
  end

  def guess
    @flashcard_box.each do |y|
      puts y.definition

      input = gets.chomp

      while input != y.term
        if input == "EXIT"
          puts "Goodbye!"
          return
        end
        puts "Incorrect, try again!"
        input = gets.chomp
      end

      if input == y.term
        puts "Correct!"
      end

    end
  end

end

##
puts "Welcome to Ruby Flash Cards. To play, just enter the correct term
for each definition. Ready? Go!"
splashy = Game.new
splashy.guess
puts splashy
