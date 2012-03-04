require 'test/unit'
require './advanced_oop'

class TestAdvancedOop < Test::Unit::TestCase

  def test_integration
    f = Foo.new
    f.bar = 3
    f.bar = :wowzo
    f.bar = 'boo!'
    assert_equal f.bar_history, [nil, 3, :wowzo, 'boo!']
  end
  
# Don't forget that the very first time the attribute receives a
# value, its history array will have to be initialized.
  
  def test_initialize_instance_variable
    assert_equal Bar.new.foo, nil, "Instance variable should be `nil` when initialized"
  end
  
  def test_array_is_initialize_and_that_an_element_can_be_added
    b = Bar.new
    b.foo = "one"
    assert_equal b.foo_history, [nil, "one"], "Are we tracking history?"
  end

end

