class Recipe
    attr_reader :dessert, :ingredients 
    @@all = []

    def initialize(dessert, ingredients) #ingredients is an array of ingredient objs
        @dessert = dessert 
        @ingredients = ingredients
        Recipe.all << self 
    end 

    def self.all 
        @@all 
    end 

end 
