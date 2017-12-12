def canonical(word)
  word.downcase!
  word.split(//)
end

def anagrams_for(word, dictionary)
  x = canonical(word)

  anagrams = []

  dictionary.each do |y|
    if (canonical(y)-x).empty?
      anagrams << y
    end
  end

  p anagrams

end

dictionary = ["acres", "cares", "Cesar", "races", "smelt", "melts", "etlsm"]

anagrams_for("acres", dictionary)
anagrams_for("melts", dictionary)
anagrams_for("hello", dictionary)
