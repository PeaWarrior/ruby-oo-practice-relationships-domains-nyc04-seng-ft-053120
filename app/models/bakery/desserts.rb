class Dessert
    attr_reader :name, :bakery, :ingredients
    @@all = []

    def initialize (name, ingredients, bakery)
        @name = name
        @ingredients = ingredients
        @bakery = bakery
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def ingredient_calories
        ingredients.map do |ingredient|
            ingredient.calorie
        end
    end

    def calories
        ingredient_calories.inject do |total_calories, calorie|
           total_calories + calorie 
        end
    end

end