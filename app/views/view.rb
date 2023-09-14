class View
  def display(meals)

   meals.each_with_index {|meal,index| puts "#{index+1}-#{meal.name}, #{meal.price}"}
  end
  def new_meal
    puts "entre le nom"
    gets.chomp
  end
  def pricing
    puts "entre le prix "
    gets.chomp.to_i
  end
end
