require_relative 'app/controllers/controller_meal.rb'
class Router
  def initialize(controller_meal) # c'est mon controller instance
    @controller = controller_meal
  end
  def run
    puts '1 - for list'
    puts '2 - for add a meal'
    tito = gets.chomp.to_i
    if tito == 1 
      @controller.display
    elsif tito == 2
      @controller.add
    end
  end
end


# TODO: implement the router of yo
