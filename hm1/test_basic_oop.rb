require 'test/unit'
require './basic_oop'

# (a) Create a class Dessert with getters and setters for
# name and calories. Define instance methods healthy?,
# which returns true if a dessert has less than 200 calories,
# and delicious?, which returns true for all desserts.
class TestDesert < Test::Unit::TestCase

  def test_healthy_if_under_200_calories
    assert Dessert.new("Low Calorie Pie", 150).healthy?, "This pie is under 200 calories, so it is healthy"
  end

  def test_now_healthy_if_200_calories_or_more
    assert_equal Dessert.new("Low Calorie Pie", 200).healthy?, false, "This pie is under 200 calories, so it is healthy"
  end

  def test_all_deserts_are_delicions
    assert Dessert.new("Low Calorie Pie", 150).delicious?, "All desert is delicious"
  end

end

# (b) Create a class JellyBean that extends Dessert, and add
# a getter and setter for flavor. Modify delicious? to return
# false if the flavor is black licorice (but delicious? should
# still return true for all other flavors and for all
# non-JellyBean desserts).
class TestJellyBean < Test::Unit::TestCase

  def test_black_licorice_is_gross
    assert_equal JellyBean.new("Low Calorie Pie", 150, "Black Licorice").delicious?, false, "All desert is delicious"
  end


  def test_every_thing_but_black_licorice_is_awesome
    assert JellyBean.new("Low Calorie Pie", 150, "Watermelon").delicious?, "If it's not black licorice it's good"
  end
end
