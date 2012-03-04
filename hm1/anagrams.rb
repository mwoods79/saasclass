def combine_anagrams words
  anagrams = {}   
  words.each do |word| 
    anagrams[sort(word)] ||= []
    anagrams[sort(word)].push word 
  end
  output = []
  anagrams.each { |k,v| output << v }
  output
end

def sort word
  word.downcase.split('').sort.join
end
