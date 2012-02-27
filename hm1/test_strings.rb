require 'test/unit'
require './strings'

class TestStrings < Test::Unit::TestCase

  def test_palindrome
    assert palindrome?("A man, a plan, a canal -- Panama"), "Should be a palindrome"
    assert palindrome?("madam, I'm Adam!"), "Should be a palindrome"
    assert !palindrome?('Abracadabra'), "NOT a palindrome"
  end
end
