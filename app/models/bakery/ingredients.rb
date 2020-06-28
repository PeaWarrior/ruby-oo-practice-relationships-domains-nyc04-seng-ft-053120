class Ingredient
    attr_reader :name, :calorie
    @@all = []

    def initialize(name, calorie)
        @name = name
        @calorie = calorie
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def dessert
        Dessert.all.select do |dessert|
            dessert.ingredients.include?(self)
        end
    end

    def self.find_all_by_name(ingredient_name)
        self.all.find_all do |ingredient|
            ingredient.name.include?(ingredient_name)
        end
    end

end