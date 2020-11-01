class Bakery 
    attr_reader :name 
    @@all = []

    def initialize(name)
        @name = name 
        Bakery.all << self
    end 

    def self.all 
        @@all 
    end 

    def desserts #this method works!
        Dessert.all.select{|snack| snack.bakery == self}
    end 

    def ingredients #this method works!
        list = []
        self.desserts.each do |snack|
            snack.ingredients.each do |item|
                list << item 
            end 
        end 
        list.uniq
    end 

    def average_calories #this method works!
        total_cal = 0.00
        self.ingredients.each do |item|
            total_cal += item.calories
        end 
        avg_cal = (total_cal / self.ingredients.count)
    end 

    def shopping_list #this method works! but needs some string formatting work
        list = ""
        self.ingredients.each do |item|
            list += "#{item.name}, "
        end
        list
    end

end 
