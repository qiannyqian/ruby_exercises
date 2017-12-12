# Your code here to sort the array
def dictionary_sort(array)
  array.sort { |x, y| x <=> y}
  array.sort.each do |word|
    puts word
  end
end

# ...your code here to initialize the program and take user input
def run
  words = Array.new

  puts "Type a word:"

  while (word = gets.chomp) != ""
    words.push(word)
    puts "Type another word (or press enter to finish):"
  end

  puts "Congratulations! Your dictionary has #{words.length} words: \n"
  dictionary_sort(words)
end

run
