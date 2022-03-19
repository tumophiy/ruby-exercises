def substrings(text, dictionary)
  result = Hash.new(0)
  lowered_text = text.downcase

  dictionary.each do |word|
    matches = lowered_text.scan(word).length
    result[word] = matches unless matches.zero?
  end

  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
