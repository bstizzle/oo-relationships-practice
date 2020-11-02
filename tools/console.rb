require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#creating a bunch objs for all my classes for testing
bens = Bakery.new("Ben's")
hannahs = Bakery.new("Hannah's")

chocolate = Ingredient.new("chocolate", 100)
chocolate_milk = Ingredient.new("chocolate milk", 200)
flour = Ingredient.new("flour", 50)
apple = Ingredient.new("apple", 20.5)
caramel = Ingredient.new("caramel", 88.8)

cake = Dessert.new("cake", bens)
pie = Dessert.new("pie", bens)
caramel_apple = Dessert.new("caramel apple", hannahs)

carApp = Recipe.new(caramel_apple, [apple, caramel])
cakeRec = Recipe.new(cake, [chocolate, flour])
pieRec = Recipe.new(pie, [flour, apple])

binding.pry
0