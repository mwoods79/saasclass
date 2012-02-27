def palindrome? string
  string = string.downcase.gsub(/\W/,'')
  string.reverse == string
end

def count_words string
  counts = Hash.new(0)
  keys = string.downcase.scan(/\w+/).each { |key| counts[key] += 1 }
  counts
end
