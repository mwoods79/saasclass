def combine_anagrams words
  anagrams = Hash.new([])   
  words.each {|word| anagrams[sort(word)] |= [word] }
  output = []
  anagrams.each{|k,v| output << v }
  output
end

def sort word
  word.downcase.split('').sort.join
end
