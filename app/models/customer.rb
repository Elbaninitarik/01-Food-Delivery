class C
  attr_accessor :id, :name, :address
  def initialize (attribute = {})
    @id = attribute [:id]
    @name = attribute [:name]
    @address = attribute [:address]
  end
end