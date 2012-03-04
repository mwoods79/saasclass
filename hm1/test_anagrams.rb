require 'test/unit'
require './anagrams'

class TestAnagrams < Test::Unit::TestCase

  def test_integration_anagrams
    input = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
    output = combine_anagrams(input)
    assert output.include? ["cars", "racs", "scar"]
    assert output.include? ["four"]
    assert output.include? ["for"]
    assert output.include? ["potatoes"]
    assert output.include? ["creams", "scream"]
  end

  def test_finds_a_simple_anagram
    input = ["cars", "scar"]
    output = [["cars", "scar"]]
    assert_equal combine_anagrams(input), output
  end

  def test_does_not_match_words_that_are_not_anagrams
    input = ["cars", "word"]
    output = [["cars"], ["word"]]
    assert_equal combine_anagrams(input), output
  end

end
