class Dessert
    attr_reader :name, :bakery
    @@all = []

    def initialize(name, bakery) 
        @name = name 
        @bakery = bakery
        Dessert.all << self
    end 

    def self.all
        @@all 
    end 

    def ingredients #this method works!
        Recipe.all.each do |snack|
            if snack.dessert == self 
                 return snack.ingredients 
            end 
        end
    end 

    def calories #this method works!
        total_cal = 0.0
        self.ingredients.each do |item|
            total_cal += item.calories
        end 
        total_cal
    end 
end 
