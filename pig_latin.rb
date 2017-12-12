## PIG LATIN A WORD

def start_with?(string)
  /^[aeiou]/.match(string) ? ( return true ) : ( return false )
end

def pig_latin(string)
  if start_with?(string) == true
    new_word = string + "way"
  else
    store = ""
    store += string[0]
    string = string[1..-1]
    new_word = string + store + "ay"
  end
end

p pig_latin("apple")
p pig_latin("pineapple")

## PIG LATIN A SENTENCE

def pig_latin_sentence(string)
  new_sentence = []
  words = string.split(" ")

  words.each do |word|
    new_sentence << pig_latin(word)
  end

  pl_sentence = new_sentence.join(" ")
  pl_sentence
end

p pig_latin_sentence("this is a sentence")
