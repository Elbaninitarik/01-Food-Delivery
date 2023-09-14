require_relative '../views/view'
require_relative '../models/meal'
require_relative '../repositories/repo_meal'

class ControllerMeal
  def initialize(repositories)
    @view = View.new
    @repo_meal = repositories
  end
  def display
  meal = @repo_meal.all
   @view.display(meal)
  end

  def add
  name = @view.new_meal
  price = @view.pricing
  meal = Meal.new(price: price, name: name)
  @repo_meal.save(meal)

    # j'ai besoin d'acceder à la view pour récupérer le name

    # je veux récupérer le prix

    # Je veux initialiser mon meal**

    # Je veux l'envoyer au repo pour le save
  end
end
