class Dessert

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 200 
  end

  def delicious?
    true
  end 

end

class JellyBean < Dessert

  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    @flavor.downcase != "black licorice"
  end 

end
