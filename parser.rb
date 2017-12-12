require 'csv'

class Person
	def initialize(row)
    @id = row[:id]
    @first_name = row[:first_name]
    @last_name = row[:last_name]
    @email = row[:email]
    @phone = row[:phone]
    @created_at = row[:created_at]
  end
end

class PersonParser
  attr_reader :file

  def initialize(file)
    @file = file
    @people = nil
  end

  def people
    return @people if @people

    @people = []

    CSV.foreach(@file, headers:true, :header_converters => :symbol) do |row|
      @people << Person.new(row)
    end

    @people
  end

  def add_people(person)
    @people << person
  end

  def save
    CSV.open('people.csv', 'wb') do |csv|
      @people.each do |person|
        csv << [:id, :first_name, :last_name, :email, :phone, :created_at]
      end
    end
  end

end

parser = PersonParser.new('people.csv')

puts "There are #{parser.people.size} people in the file '#{parser.file}'."

add_in = {
  :id => 201,
  :first_name => "Chris",
  :last_name => "Jacob",
  :email => "chris@jacob.com",
  :phone => 1-782-671-2356
  }

parser.add_people ( Person.new(add_in) )
parser.save

puts "There are #{parser.people.size} people in the file '#{parser.file}'."
