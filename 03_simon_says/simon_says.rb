def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num=2)
  ("#{word} " * num).strip
end

def start_of_word(word, num=1)
  if num == 1
    word[0]
  else
    word[0, num]
  end
end

def first_word(sentence)
  words = sentence.split
  words[0]
end

def titleize(sentence)
  lowercase_words = ["a", "an", "the", "and", "but", "or", "for", "nor", "of", "to", "over"]
  words = sentence.split
  words.each { |word| word.capitalize! unless lowercase_words.include?(word) && word != words[0] }.join(" ")
end
