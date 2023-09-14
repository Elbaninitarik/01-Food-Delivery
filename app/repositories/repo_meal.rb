require 'csv'
class RepoMeal
  def initialize(csv_file)
    @meals = []
    @next_id = 0
    @csv_file = csv_file
    CSV.foreach(@csv_file) do |row|
      row[0].to_i
      row[2].to_i
      @meals << Meal.new(id:row[0], name:row[1], price:row[2])
    end
    def all
    @meals
    end
  end
  def save(meal)
   @next_id += 1
   meal.id = @next_id
  @meals << meal

  CSV.open(@csv_file, "wb") do |csv|
  @meals.each do |meal|
      csv << [meal.id, meal.name, meal.price]
      end

  end
  end

end
