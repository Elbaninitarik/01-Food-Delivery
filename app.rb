require_relative 'app/controllers/controller_customer.rb'
require_relative 'app/controllers/controller_meal.rb'
require_relative 'app/repositories/repo_customer.rb'
require_relative 'app/repositories/repo_meal.rb'
require_relative 'router.rb'

csv_file = File.join(__dir__,'data/meal.csv')
repositories = RepoMeal.new(csv_file)
controller_meal = ControllerMeal.new(repositories)
router = Router.new(controller_meal)
router.run

# csv_file = File.join(__dir__,'data/meal.csv')
# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb
