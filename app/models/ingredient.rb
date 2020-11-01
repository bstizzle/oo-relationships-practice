class Ingredient
    attr_reader :name, :calories
    @@all = []

    def initialize(name, calories)
        @name = name 
        @calories = calories.to_f 
        Ingredient.all << self
    end 

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient) #this method works!
        self.all.select do |item|
            item.name.include?(ingredient)
        end 
    end 

    def desserts #this method works!
        list = []
        Recipe.all.each do |snack|
            if snack.ingredients.any?(self)
                list << snack.dessert
            end 
        end 
        list 
    end 

    def bakeries #this method works!
        self.desserts.map{|snack| snack.bakery}.uniq
    end 

end 
