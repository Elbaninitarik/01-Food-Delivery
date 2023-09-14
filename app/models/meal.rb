class Meal
  attr_accessor :id, :name, :price
  def initialize(attribute = {})
    @id = attribute[:id]
    @name = attribute[:name]
    @price = attribute[:price]
  end
end
