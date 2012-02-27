def palindrome? string
  string = string.downcase.gsub(/\W/,'')
  string.reverse == string
end

def count_words string
  keys = string.downcase.scan(/\w+/)
  counts = Hash.new(0)
  keys.each { |key| counts[key] += 1 }
  counts
end
