def palindrome? string
  string = string.downcase.gsub(/\W/,'')
  string.reverse == string
end
