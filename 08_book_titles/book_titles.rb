class Book
  def title
    @title
  end

  def title=(name)
    array = name.split
    array.each do |word|
      word.capitalize! unless ["and", "or", "a", "to", "in", "the", "of", "an"].include?(word)
    end
    array[0].capitalize!
    @title = array.join(" ")
  end
end