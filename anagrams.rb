#ANAGRAMS
def canonical(word)
  word.downcase!
  word.split(//)
end

def is_anagram(word1, word2)
  x = canonical(word1)
  y = canonical(word2)

  if (y-x).empty? == true
    p true
  else
    p false
  end
end

# def is_anagram(word1, word2)
#   word1.downcase!
#   word2.downcase!
#
#   x = word1.split(//)
#   y = word2.split(//)
#
#   if (y-x).empty? == true
#     p true
#   else
#     p false
#   end
# end

is_anagram("iceman", "cinema")
is_anagram("iceman", "ciNema")
is_anagram("cares", "turtle")
