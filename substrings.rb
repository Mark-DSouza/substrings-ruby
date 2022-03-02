def substrings(string, dictionary)
  string = string.downcase
  dictionary.reduce(Hash.new(0)) do |result, word|
    size = string.scan(word).length
    result[word] += size if size > 0
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
