def translate_word(word)
  vowel = ["a", "e", "i", "o", "u"]
  if vowel.include?(word[0].downcase) || vowel.include?(word.downcase)     
    "#{word}ay"
  elsif word[0..1] == "qu"
    word[2..-1] + "quay"
  elsif word[1..2] == "qu"
    word[3..-1] + word[0..2] + "ay"
  else
    letters = word.split(//)
    consonants = []
    while !vowel.include?(letters[0])
      consonants.push(letters[0])
      letters = letters.drop(1)      
    end
    letters.push("#{consonants.join}ay").join
  end
end


def translate_sentence(sentence)
  array_of_words = sentence.split
  array_of_words.map! do |word| 
    translate_word(word)
  end
  array_of_words.each do |word|
    unless word == word.downcase
      word.capitalize!
    end
  end
  array_of_words.join(" ").strip
end


def translate(text)
  punctuation = []
  array_of_sentences = text.gsub(/[,.?!]/, '\0|').split('|')
  array_of_sentences.each do |sentence|
    punctuation.push(sentence[-1]) if [",",".","?","!"].include?(sentence[-1])
    sentence.sub!(/[,.?!]/, '')
  end

  array_of_sentences.map! do |sentence|
    translate_sentence(sentence)
  end

  if punctuation.empty? 
    output = array_of_sentences.join(" ")
  else 
    i = 0
    output = ""
    while i < array_of_sentences.length do
      output << (array_of_sentences[i] + punctuation[i] + " ")
      i += 1
    end
  end
  output.strip
end

p translate("Hi Alex, how are you? I programmed conversion to pig latin.")
p translate("Unfortunately, I can not translate it back to normal.")
p translate("Have a good day, Alex.")